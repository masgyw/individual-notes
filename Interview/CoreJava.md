[返回大纲](./index.md)
# 一、Java基础
## 1. 面向对象与面向过程的区别，举个例子说明一下
面向过程：分析解决问题的步骤，强调的是步骤和顺序，比较直接高效。  
面向对象：注重事情的参与者，及各个参与者需要做的事情，容易复用、扩展和维护。  
最大的区别：是否面向抽象编程  
举例：人洗衣服  
## 2. hashcode 的作用
根据内存对象地址换算出的一个值，hashcode不同，对象不等；hashcode相等，对象不一定相等；  
hash存在碰撞，解决hash冲突的方法：开发寻址法、链地址法、再hash法。
## 3. 基本数据类型
Integer 可枚举，所以可以设置缓存，默认是[-128,127]
## 4. 四种引用，强软弱虚
强，OOM不会回收  
软，内存不足时，OOM，JVM回收  
弱，GC 直接回收  
虚，回收之前，会被放入ReferenceQueue中，其他引用会在JVM回收后，放入ReferenceQueue中，所以虚引用大多用于引用销毁前的处理工作。  
## 5. a=a+b与a+=b有什么区别
前者不会隐式类型转换，后者会将结果隐式转换为a。
## 6. try catch finally，try里面retrun，finally 中还执行吗
finally还执行，在return 之前执行。  
1. 如果return 返回的是对象引用，finally中修改，会影响return 的值
2. 如果return 返回的是基本类型，finally中修改，不会影响return 的值
## 7. OOM你遇到过哪些情况，SOF你遇到过哪些情况
OOM：OutOfMemoryError，内存溢出，除了程序计数器不会发生，其他区域都会发生OOM。  
1. Java Heap 溢出：堆存储对象实例，对象多，且GC Roots可达，数据量最大堆容量就会发生OOM。  
解决方法：开启内存堆转储快照dump功能，通过内存分析工具进行分析，重点是分析对象是否是必要的，主要是分清内存泄漏还是内存溢出。  
内存泄漏：可以通过内存工具进一步看泄漏对象到GCRoots的引用链，于是可以发现泄漏对象是通过怎样的路径导致JVM无法自动回收的，进行代码的优化。  
如果不存在内存泄漏，检查堆内存大小的设置(-Xmx 和 -Xms) 
2. Java 栈溢出：虚拟机栈或本地方法栈中存储栈帧，如果线程请求的栈深度大于虚拟机允许的最大深度，抛出SOF（StackOverflowError）。  
如果虚拟机在扩展栈时无法申请足够的内存空间，抛出OOM异常  
注意：栈的大小越大，可分配的线程数就越少
3. 运行时常量区溢出：PermGenspace
4. 方法区溢出：方法区用于存储Class 相关信息，如类名、访问修饰符、常量池、字段描述符、方法描述等
## 8. 什么是反射
运行时，获取类的所有属性和方法；调用对象的任意方法，这种能力称之为反射；  
JDBC 就是典型，Class.forName('com.mysql.jdbc.Driver')
反射的优缺点  
优点：
1. 动态的获取类的信息，提高灵活性
2. 与动态编译结合
缺点：  
1. 使用反射性能较低，需要解析字节码，将内存中的对象解析（解决方案：关闭安全检查，缓存类，用以创建相同的类对象）
2. 相对不安全，破坏了面向对象的封装性
## 9. JDK版本新特性
|版本|新特性|
|---|---|
|JDK8|1.Lambada表达式<br>2.函数式接口，Consumer,Function,Predicate等<br>3.方法引用<br>4.Stream API<br>5.接口默认方法和静态方法<br>6.Optional空指针对象封装|
|JDK9|1.集合工厂方法<br>2.接口私有方法<br>|
|JDK10&&JDK11|1.var关键字修饰局部变量|
|JDK12+|1.switch优化<br>2.多行文本|

## 二、集合
![集合框架图](./images/Collection.png)

### 集合异同点
|集合类型|空值|重复|有序|线程安全|扩容|备注|
|---|---|---|---|---|---|---|
|ArrayList|是|是|插入顺序|否|数组初始10，1.5n|随机访问快，中间增删慢|
|LinkedList|是|是|插入顺序|否|链表，无界|检索慢，中间增删快|
|HashSet|是|否|否|否|基于HashMap实现，value是一个对象|
|TreeSet|否|否|key字典序|否|基于TreeMap实现|
|HashMap|是|key/value|否|否|初始16，扩容2n|红黑树+链表|
|LinkedHashMap|是|key/value|插入顺序|否|链表保存插入顺序|
|TreeMap|否|value|key字典序|否|红黑树|方便遍历和查找，增删节点重排序，影响性能|
|CopyOnWriteArrayList|是|是|是|是|0.5n|写时复制，线程安全，数据最终一致性，黑名单，白名单场景|
|CopyOnWriteArraySet|是|否|是|是|0.5n|内部依赖COWAL|
|ConcurrentSkipSet|
|ConcurrentHashMap|
|ConcurrentSkipMap|
|ConcurrentLinkedQueue|
|ArrayBlockingQueue|
|LinkedBlockingQueue|
|PriorityBlockingQueue|

### HashMap相关
#### 为什么HashMap容量使用2的幂
1. hash算法：将key的hashcode的高16位和低16位异或算出hash，降低哈希碰撞概率，使数据更加的均匀
2. indexFor：计算key 的桶位，h & (length - 1)，可以直接通过位运算计算出桶位，不用求余运算，效率更高
#### JDK1.8为什么使用红黑树
- 节点不是红就是黑
- 根节点是黑，叶子节点也是黑（可能是null）
- 红节点子节点必然跟黑节点
- 根节点到叶子节点的路径上，包含相同数目的黑节点
- 红黑树的基本操作是添加、删除，对红黑树操作后，需要旋转自动平衡为红黑树

总结：最远叶子节点到根节点的距离，必然不会大于最近叶子节点的两倍，所以红黑树的最好、最坏查询效率都是O(logn)。
#### HashMap的put方法的具体流程
#### HashMap的扩容操作是怎么实现的
1. 初始化或达到阈值时，进行resize 扩容
2. 每次扩展是原来的2倍
3. 扩展后的位置要么在原来的位置，要么移动到原偏移量1倍的位置：扩容后的所有元素重新计算下标，hash & (table.length - 1)，根据位运算的结果为0，保持原位置，为1，原位置加旧数组长度；

### ConcurrentHashMap原理

### Collections.sort 算法是如何实现的
1. 调用List default 方法，list.sort()
2. toArray() 对象数组
3. Arrays.sort(arr)
    - 没有自定义比较器：


## 三、IO/NIO
### 3.1 IO 的类型
1. 流向：输入流/输出流
2. 操作单元：字节流/字符流
3. 处理节点：节点流/处理流

### 3.2 IO 和 NIO 的区别与联系
|区别|IO|NIO|总结|
|---|---|---|---|
|IO模型|阻塞IO模型|多路复用模型|NIO效率更高|
|处理数据方式|字节/字符流|块|NIO处理数据更快|
|流|单向，输入流、输出流|双向管道+缓存||
|缓存|NA|通过直接内存，缓存，提高IO的效率||
### 3.3 同步和异步，阻塞和非阻塞
同步和异步：应用程序是否参与读写，应用程序参与读写IO  
同步阻塞：等待读写操作完成，再进行下一步操作  
同步非阻塞：发出读写请求后，继续下一步执行，IO可读、可写时，返回执行读写； 异步阻塞：发送请求后，等待读写完成，接收到消息  
异步非阻塞：发送请求后，继续执行，读写操作完成后，发送通知消息  
### 3.4 IO、NIO、AIO的区别
IO：同步阻塞IO，面向单向数据流  
NIO：同步非阻塞式IO，面向缓冲  
Buffer：缓冲区，数据存放的内存空间  
Channle：通道，双向，既可以读也可以写，与buffer交互  
Selector：选择器，选择已就绪任务的能力，单个线程轮询管理多个通道，减少线程的使用  
注册：channle 调用register方法注册到指定选择器，监听interest集合
轮询：单线程，while true，调用select方法，轮询出来的key需要从选择器中移除  
AIO：异步非阻塞式IO IO的缺点：阻塞IO，一个新的连接，就需要一个新的线程，有连接数的上限，线程过多，影响性能  
NIO的优点：非阻塞式IO，通过一个线程轮询Selector就可以管理多个连接通道，使用epoll技术，理论上无连接上限  

## 参考
[Java NIO 底层原理](https://www.cnblogs.com/crazymakercircle/p/10225159.html)