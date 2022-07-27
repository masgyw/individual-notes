# Netty
## Netty线程模型  
Java NIO 的selector 给Reactor模式提供了基础，Netty结合Selector 和 Reactor模式设计了高效的线程模型。  
## Reactor模式  
类似MQ的实现，由MQ缓存消息，消费者从MQ poll拉取消息。不同的是，netty 没有队列，Service Handler收到请求后，根据不同Event类型分发给不同的Request Handler。  
## Reactor模式的实现  

|方式|说明|优点|缺点|
|---|---|---|---|
|单线程|基于Linux内核的select()/epoll()，实现单线程Acceptor处理多个连接请求|并发低，小容量的应用|1.Nio线程处理成千上万个链路，性能上无法支持；2.高负载，线程处理能力下降，会有超时；3.可靠性低，若发生死循环，通信不可用|
|多线程|Acceptor由单个线程处理，分发给线程池处理请求|大部分场景适用|在特殊场景，服务器对客户端握手消息进行安全验证|
|主从模型|Reactor分为main和sub，main主要accept socket，发给subReactor，由subReactor进行分发，类似多线程模型|||

## Netty模型
Netty是Reactor主从模型的变种，去掉线程池。  
主要组件：  
- Selector  
- EventLoopGroup/EventLoop  
- ChannelPipeline
- Buffer扩展  

3.1 Selector  
Nio 中的多路复用器  
3.2 EventLoopGroup/EventLoop  
Netty采用了串行化设计理念，从消息的读取、编码以及后续Handler的执行，始终都由IO线程EventLoop负责，这就意外着整个流程不会进行线程上下文的切换，数据也不会面临被并发修改的风险，所以去掉了线程池。  
EventLoopGroup是一组EventLoop的抽象，EventLoopGroup提供next接口，可以从一组EventLoop里面按照一定规则获取其中一个EventLoop来处理任务，对于EventLoopGroup这里需要了解的是在Netty中，在Netty服务器编程中我们需要BossEventLoopGroup和WorkerEventLoopGroup两个EventLoopGroup来进行工作。通常一个服务端口即一个ServerSocketChannel对应一个Selector和一个EventLoop线程，也就是说BossEventLoopGroup的线程数参数为1。BossEventLoop负责接收客户端的连接并将SocketChannel交给WorkerEventLoopGroup来进行IO处理。  
EventLoop的实现充当Reactor模式中的分发（Dispatcher）的角色。  
3.3 ChannelPipeline  
ChannelPipeline其实是担任着Reactor模式中的请求处理器这个角色。  
默认实现是DefaultChannelPipeline，DefaultChannelPipeline本身维护着一个用户不可见的tail和head的ChannelHandler，他们分别位于链表队列的头部和尾部。ChannelHandler有两个重要的接口，ChannelInBoundHandler和ChannelOutBoundHandler。inbound可以理解为网络数据从外部流向系统内部，而outbound可以理解为网络数据从系统内部流向系统外部。  
netty的Pipeline模型用的是责任链设计模式，当boss线程监控到绑定端口上有accept事件，此时会为该socket连接实例化Pipeline，并将InboundHandler和OutboundHandler按序加载到Pipeline中，然后将该socket连接（也就是Channel对象）挂载到selector上。一个selector对应一个线程，该线程会轮询所有挂载在他身上的socket连接有没有read或write事件，然后通过线程池去执行Pipeline的业务流。selector如何查询哪些socket连接有read或write事件，主要取决于调用操作系统的哪种IO多路复用内核，如果是select（注意，此处的select是指操作系统内核的select IO多路复用，不是netty的seletor对象），那么将会遍历所有socket连接，依次询问是否有read或write事件，最终操作系统内核将所有IO事件的socket连接返回给netty进程，当有很多socket连接时，这种方式将会大大降低性能，因为存在大量socket连接的遍历和内核内存的拷贝。如果是epoll，性能将会大幅提升，因为他基于完成端口事件，已经维护好有IO事件的socket连接列表，selector直接取走，无需遍历，也少掉内核内存拷贝带来的性能损耗。  
3.4 Buffer  
扩展了NIO 的buffer。  

|分类|JDK|Netty|
|---|---|---|
|byte读写|ByteBuffer读写都是position，每次读前flip复位，每次写前clear，写前必须读完|ByteBuf使用两个指针readIndex和writeIndex，读写互不影响|
|拷贝|使用传统的堆内存（HEAP BUFFERS）进行Socket读写，JVM会将堆内存Buffer拷贝一份到直接内存中，然后才写入Socket中|使用直接内存（DIRECT BUFFERS），不需要拷贝|
|引用计数与池化技术||netty直接操作直接内存，根据引用计数法进行内存管理，Directbuffer比heapBuffer申请效率更低，所以采用池化技术，进行Buffer的复用|

## InboundHandler和OutboundHandler的执行顺序
1. InboundHandler是通过fire事件决定是否要执行下一个InboundHandler，如果哪个InboundHandler没有调用fire事件，那么往后的Pipeline就断掉了。
2. InboundHandler是按照Pipleline的加载顺序，顺序执行。
3. OutboundHandler是按照Pipeline的加载顺序，逆序执行。
4. 有效的InboundHandler是指通过fire事件能触达到的最后一个InboundHander。
5. 如果想让所有的OutboundHandler都能被执行到，那么必须把OutboundHandler放在最后一个有效的InboundHandler之前。
6. 推荐的做法是通过addFirst加载所有OutboundHandler，再通过addLast加载所有InboundHandler。
7. OutboundHandler是通过write方法实现Pipeline的串联的。
8. 如果OutboundHandler在Pipeline的处理链上，其中一个OutboundHandler没有调用write方法，最终消息将不会发送出去。
9. ctx.writeAndFlush是从当前ChannelHandler开始，逆序向前执行OutboundHandler。
10. ctx.writeAndFlush所在ChannelHandler后面的OutboundHandler将不会被执行。
11. ctx.channel().writeAndFlush 是从最后一个OutboundHandler开始，依次逆序向前执行其他OutboundHandler，即使最后一个ChannelHandler是OutboundHandler，在InboundHandler之前，也会执行该OutbondHandler。
12. 千万不要在OutboundHandler的write方法里执行ctx.channel().writeAndFlush，否则就死循环了。

## 粘包、拆包解决方案
四个内置的拆包器解决粘包、拆包问题。  
* 固定长度的拆包器 FixedLengthFrameDecoder
* 行拆包器 LineBasedFrameDecoder
* 分隔符拆包器 DelimiterBasedFrameDecoder
* 基于数据包长度的拆包器 LengthFieldBasedFrameDecoder
## Netty 高性能体现在哪些方面
1. NIO
2. 内存零拷贝
3. 内存池设计
4. 串行化读写处理
5. 高性能序列化
6. 高效并发编程体现

## 参考网站
1. [彻底搞懂Reactor模型和Proactor模型](https://cloud.tencent.com/developer/article/1488120)