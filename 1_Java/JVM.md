# JVM

## 基础
1. 多级缓存：3级缓存 L1～L3
   1. 缓存一致性协议：Intel芯片，MESI
2. 缓存行：64bit(8 Long 字段)
   1. 伪共享

## 类加载系统

## 运行时数据区

## 垃圾回收算法

## 垃圾回收器

## GC 日志
### JDK7
1. 打印日志参数
   ```sh
   -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:gc.log
   ```
2. 设置CMS GC
   1. 默认年轻代：ParNew 多线程垃圾回收器
   2. 参数配置
   ```sh
   -XX:+UseConcMarkSweepGC
   ```
   3. 

## 解决JVM运行中的问题
1. Java- Xms200M -Xmx200M -XX:PrintGC xxxMain.class
2. 一般运维团都首先收到告警信息 CPU memory
3. top命令观察到问题：内存不断增长 CPU占用率居高不下
4. top -Hp 观察进程中的线程，哪个线程CPU和内存占比高
5. jps定位具体java进程
   1. jstack 定位县城状况，重点关注：WAITING BLOCKED
6. 



## 参考
1. [GC日志详解](https://cloud.tencent.com/developer/article/1745971)