# JVM

## 1. GC 日志
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



## 参考
1. [GC日志详解](https://cloud.tencent.com/developer/article/1745971)