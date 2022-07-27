# 

1. 启动  
java -jar arthas-boot.jar，选择pid 后，进入arthas 命令行界面
2. 查看dashboard  
输入dashboard , enter;退出 q
3. 通过thread命令来获取指定线程  
thread 1|grep 'main'
4. 通过jad来反编译  
jad Class
5. 通过watch命令来查看函数的返回值
watch {class} {method} returnObj
6. 退出
quit or exit ： 退出命令行，attach 还存在
stop：完全退出

## 参考
1. [arthas官方文档](https://arthas.aliyun.com/doc/advanced-use.html)