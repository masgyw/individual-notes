# 并发编程

## 线程有哪些基本状态
线程在生命周期中并不是固定处于某一个状态而是随着代码的执行在不同状态之间切换  
Thread类中对状态的定义如下：
|状态名称|说明|原因|
|---|---|---|
|NEW|新建|未调用start()方法|
|RUNNABLE|运行状态|RUNNING/READY切换，CPU时间片调度|
|BLOCKED|阻塞|获取锁失败，阻塞|
|WAITING|等待|Object.wait()<br>LockSupport.park()<br>Thread.join()|
|TIME_WAITING|时间等待|Object.wait(timeout)<br>Thread.join(timeout)<br>Thread.sleep(timeout)<br>LockSupport.parkNanos()<br>LockSupport.parkUntil()|
|TERMINATED|结束|程序正常结束|
## 创建线程有几种方式
1. Thread 继承
2. 实现Runnable接口
3. 实现Callable接口，通过FutureTask 实现线程
4. 线程池 ExecutorService 管理上面三种方式
## FutureTask 的工作原理
Future接口提供了中断任务，查询任务状态和获取执行结果的能力
- FutureTask 实现RunnableFuture接口，实现了Future接口获取任务结果；实现Runnable接口，可以提交给Executor执行
- FutureTask 内部有int 型state，共有8种状态，NEW/COMPLETING/NORMAL/EXCEPTIONAL/CANCELLED/INTERRUPTING/INTERRUPTED；变量运行线程 runner
- 通过 ExecutorService.submit 方法提交
- 执行流程：
    1. 判断线程是不是没有执行，并且将线程赋值给runner,
    2. 如果Callble对象不为空，且线程没有执行过，那么调用call()方法获取同步获取执行结果
    如果出现异常，调用setException 如果成功调用set将结果插入。唤起等待的线程
    3. 如果是中断的，那么将FutureTask中其他的等待线程状态改为中断
## Synchronized 和 ReentrantLock 区别与联系
相同点：
- 同步锁，保证同时只有一个线程访问
不同点：
- 实现方式：Synchronized 是语言级别的，需要JVM实现；ReentrantLock 是代码级别的，需要lock()/unlock()配合try{} finnally{}语句实现
- 用法：Synchronized 可以修饰类/方法/代码块，ReentrantLock 只能修饰代码块，标准形式是try {} finally {}
- 释放锁：Sync 自动释放锁，代码执行结束或异常；ReLock 可以中断；
- 高级功能：ReLock 可以实现非公平锁、条件锁，读写锁
## Synchronized 原理和优化
- 原理  
    1. 修饰方法：编译时方法上生成ACC_SYNCHRONIZED修饰符，若为实例方法，则获取对象锁，monitor计数器+1，若获取锁失败，则被阻塞，等待锁释放
    2. 修饰代码块：编译后，会在同步块的前后分别形成monitorenter和monitorexit两个字节码指令。在执行monitorenter时，尝试获取对象锁，如果对象没有被锁定，或者当前线程已经获取对象锁，把锁的计数器加+1，相应的，在monitorexit时，计数器-1，当计数器为0，锁被释放。如果获取对象锁失败，那么线程就要被阻塞，直到对象锁被另一个线程释放。
- 锁升级流程
    1. 判断对象锁标志，若为01，无锁或偏向锁，判断偏向锁标志，若为0（无偏向），CAS设置MarkWord头部为当前线程的ID，设置成功，进入代码块；若为1（偏向锁），判断MarkWord头部是否为当前线程ID，若一致，进入同步代码块；若不一致，CAS尝试设置MarkWord Thread ID，若失败，开始偏向锁撤销。
    2. 偏向锁撤销：原持有锁线程到达安全点，暂停原持有锁线程，检查原持有偏向锁的线程状态，若线程状态结束，已经释放锁，唤醒原持有锁线程；若未退出同步代码块，升级轻量级锁；
    3. 升级轻量级锁：在栈中生成锁记录，记录MarkWord中的信息，CAS 操作将MarkWord中存储锁记录的指针，操作成功，锁标志位00；唤醒持有锁的线程，继续执行；执行完成，轻量级解锁，CAS 操作，对象头中锁记录的指针是否指向当前线程的锁记录，锁记录中信息是否是对象头中MarkWord一致，两个同时满足，解锁成功；有一点不满足，解锁，并通知等待锁的线程
    4. 判断锁标志位00，轻量级锁，线程栈中生成锁记录，并拷贝对象头markword，CAS 设置对象头的锁记录指针，若成功，则进入同步块；若失败，自旋重试，到达10次，升级为重量级锁；
    5. 升级为重量级锁，markword 中存储monitor的指针，标志位10，mutex 阻塞当前线程；

## Lock 中公平锁、读写锁使用的场景


## 请说说线程池工作机制  
1）若线程池未到coreSize ，任务直接分配新的线程执行  
2）线程池达到coreSize，任务进入任务等待队列  
3）任务等待队列满，线程数小于maxSize，线程池新增线程执行任务  
4）大于coreSize 的线程数，会在指定时长后停止，回收，最终保持线程池大小为coreSize  
5）达到MaxSize，走线程池拒绝策略  
- AbortPolicy：抛出异常（默认）
- DiscardPolicy：静默丢弃拒绝的任务
- DiscardOldestPolicy：丢弃最早的任务
- CallerRunsPolicy：调用者线程执行

## CopyOnWriteArrayList.set 或CycleBarrier里会有如下形式的代码
```java
final ReentrantLock lock = this.lock;
lock.lock();
```
1. 加快访问速度：访问的时候直接在线程堆栈中