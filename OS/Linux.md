# Linux 操作系统

[一、常用命令](一、常用命令)  
[二、用户管理](二、用户管理)  
[三、进程管理](三、进程管理)  
[四、Shell编程](四、Shell编程)  
[五、源码解读](五、源码解读)  
[六、系统安装问题](#六、系统安装问题)  
***

## 一、常用命令
### 文件处理命令
- ls 显示文件目录  
语法：ls [-选项] [文件或目录]  
选项：  
a 显示所有文件，包括隐藏文件  
l（小写l）显示详细信息  
i 显示 i节点（可以通过find 命令查找）  
- touch 创建一个空文件  
- mkdir 创建一个文件夹  
### 查看日志
1. 找到日志行数  
cat -n test.log | grep "地形"  
2. 查看日志所在行数的前后  
cat -n test.log |tail -n +92|head -n 20 ：92行后的20行  
3. 日志查找  
grep -opt 5 "" logfile  
opt: -A:后；-B：前；-C：前后  
5：行数  
### 权限处理命令
- chmod  改变文件或目录的权限  
语法：  
chmod [{ugo}{+-=}{rwx}] [文件或目录]  
chmod [777] [文件或目录]  
说明  
文件 的 w 写权限，不代表可以删除文件，只有修改文件的权限  
目录 的 w 表示，可以在目录下创建和修改文件  
注意：由文件的w 权限，无目录的w 权限，是不允许删除的  
- chown 改变文件的所有者
- chgrp 改变文件的所属组
- umask -S 查看系统默认的权限
### 文件搜索命令
- find 查找任何文件或目录（所有）  
语法  
find [搜索范围路径] -name [文件名]  
find [搜索范围路径] -size [+-，按照文件大小查找，+：大于；-：小于]  
find [搜索范围路径] -user [文件的所有者]  
find [搜索范围路径] -type [d（目录）/f（文件）/l（软连接）]  
find -[时间查找] （以天、分钟为单位）[+-]
[以天为单位] 1 ctime、atime、mtime
[以分钟为单位] 1 cmin、amin、mmin  
c：change 改变文件属性的意思；a：access 被访问；m：modify 被修改内容；  
+：之外；-：之内；  
find ... -exec/ok [执行命令] {} \; 文件结果执行命令（例如找到文件并删除）  
... 代表文件搜索选项  
{} 代表 前一步 的结果集  
exec和ok的区别是，ok 有询问确认的意思；  
find -inum [inode seq] i节点标识  
连接符：-a （and，逻辑与）；-o（or，逻辑或）  
- which 查看命令所在的目录位置  
语法：which [命令名称]  
- locate 查找文件，根据linux数据库内部索引查找  
【优点】查找速度很快，比find快  
【缺点】有时新创建的文件找不到，需要配合updatedb命令，更新数据库；  
- man 帮助命令，获得命令的帮助文档
语法：man [命令或配置文件]
whatis 查看命令的描述
--help 查看命令的选项
### 压缩解压缩命令
- tar 打包目录，生成后缀名.tar.gz，或者进行解压
语法：tar [zcvf] [zxvf] [打包文件.tar.gz] [源文件]  
-c 文件打包  
-x 文件解压缩  
-v 详细信息  
-f 指定压缩后的文件名  
-z 打包同时压缩  
-C 指定解压后存放的路径  
- zip 生成win和linux通用.zip 文件  
语法：zip [选项 -r] [压缩后文件] [源文件]
- unzip 进行解压缩  
选项：最后配置加 -d，指定文件解压后存放的位置
### vi/vim
1. 工作模式：命令模式、插入模式、编辑模式；  
插入模式：aio  
a 光标后插入；A 行末插入  
i 光标前插入；I 行首插入；  
o 光标下插入新行；O 光标上一行插入；  
2. 定位命令  
编辑模式  
跳转行号，直接输入行号+回车  
set number（nu） 设置行号  
set nonu 取消行号  
命令模式  
j 下移一行；k 上移一行；h 左移一个字符；l 右移一个字符；  
$ 行尾；0 行首；  
3. 删除命令  
命令模式  
x 删除光标所在处字符；dd 删除所在行；ndd 删除光标后n行  
编辑模式  
n1,n2d 删除指定范围内的行  
4. 复制和粘贴  
命令模式  
yy/Y 复制当前行  
nyy/nY 复制当前以下n行  
dd 剪切当前行；ndd 当前以下n行；  
p、P 粘贴在光标所在行上、行下；  
5. 替换、搜索  
命令模式  
r 取代光标所在字符；R 从光标所在开始替换字符，esc 结束  
u 取消上一步操作（类似 win ctl+z）  
/string 向前搜索指定字符串（忽略大小写，：set ic）  
：%s/old/new/g 全文替换指定字符串  
：n1,n2/old/new/g 在行1,行2之间替换字符串  
## 二、用户管理
1. 配置文件  
/etc/passwd 用户信息文件  
用户名：密码：用户标志号：缺省组标志号：注释性描述：宿主目录：命令解释器  
/etc/shadow 密码文件  
用户名：密码：最后一次修改的天数；两次修改密码之间最小天数；密码有效天数；系统警告到密码失效的天数；
帐号闲置时间：密码失效的绝对天数；标志（不使用）  
/etc/login.defs /etc/default/useradd 用户配置文件
/etc/skel 新用户信息文件  
/etc/group 用户组文件  
/etc/gshadow 用户组密码文件  
2. 用户管理命令、用户组命令、组授权  
用户管理  
useradd [username] 添加用户  
passwd [username] 设置密码  
usermod -l [new] [old] 修改用户  
用户组管理  
groupadd 添加组  
groupdel 删除组  
groupmod 修改组  
groups [用户名] 用户所属组  
gpasswd 管理组内成员  
-a 添加用户  
-d 删除用户  
-A 设置管理员  
## 三、进程管理
- w（who） 查看用户信息  
- ps 进程查看命令  
选项  
-a 显示所有用户进程  
-l 长格式显示  
-u 显示用户和启动时间  
-x 显示没有控制终端的进程  
-e 显示所有进程，包括没有控制终端的进程  
-w 宽行显示  
--sort 排序  
显示参数  
STAT 当前状态，S休眠 D 不可中断休眠 R 运行状态 Z 僵死状态 T 停止  
UID 当前启动进程的用户  
PID 进程号  
PPID 父进程ID  
TTY 进程启动的终端  
NI 进程优先级  
TIME 占用的时间  
ps -el 查看所有进程  
ps -aux 显示当前进程占用CPU和内存百分比  
ps -aux|grep tomcat 过滤  
nohup 使进程在用户退出登陆后仍旧继续执行
& 后台进程  
ctrl + z 挂起  
jobs 查看后台进程  
fg [任务编号] 任务恢复到前台执行；bg [任务编号] 任务恢复到后台执行；  
top 进程状态显示和进程控制（动态显示）  
d 指定刷新时间间隔  
c 显示命令行参数信息  
u 查看用户的进程  
k 终止正在执行的进程  
- 任务计划  
at 在某一时刻进行  
at [HH:MM YYYY-MM-DD] 或 now + n （minutes、hours、days）
crontab ｛-l、-r、-e｝ 周期性作业，用于生成cron进程所需要的crontab文件  
选项  
-l  显示当前crontab  
-r 删除  
-e 编辑  
计划命令的时间格式  
分钟|小时|天|月|星期|命令or脚本  
- 启动  
/etc/rc.d/init.d/crond start  
chkconfig   
自动启动
- 查看端口占用情况  
lsof -i:[端口]  
netstat -tunlp | grep tomcat  
t：tcp  
u：udp  
n：number，显示为数字  
l：listen，显示监听状态的端口  
p：progress，进程  
## 四、Shell编程
### Shell编程的基础知识
变量：传递数据的一种方法，用来代表每个取值的符号名  
shell有两种变量：临时变量和永久变量；  
临时变量：shell内部定义，范围仅限定义它的程序，对其他程序不可见，如自定义变量；  
永久变量：环境变量，脚本执行不会消失；  
自定义变量：字或或下划线开通，由字母、数字或下划线序列组成，大小写敏感  
使用：必须在变量名前加前缀“$”  
表示法：大写字母  
赋值：赋值号“=”，两边没有空格  
命令替换符（`）:将命令的执行结果赋值给变量  
单引号（' '）：会将值原封不动的输出  
双引号（" "）：变量值会进行输出  
占位变量：$0-9 （范围 0-9）  
特殊变量  
$* 所有参数  
$# 参数个数  
$$ 程序的PID  
$! 执行上一个后台命令的PID  
$? 执行上一个命令的返回值  
### Shell编程的语句
test 测试命令，结合 if 判断，可用 ["空格" -d $1 "空格" ] 简化：如 test -d $1 => [ -d $1 ]  
循环  
列表循环 for var in [params] do ... done  
while test do ... done  
分支  
if test then ... elif test then ... else ... fi
case $i in a) ... esac  
循环控制  
break  
continue 
;; 

## 五、源码解读
tengine-2.1.0.tar.gz

## 六、系统安装问题
1. 复制虚拟机镜像.vdi 文件到新的虚拟机，网卡问题  
删除：/etc/udev/rules.d/70-persistent-net.rules
修改：vim /etc/sysconfig/network-scripts/ifcfg-eth0的mac 地址  
重启

2. 修改linux root密码

3. 开机启动图形化界面
systemctl get-default  
graphical.target 代表开机时启动图形化界面  
multi-user.target 代表开机时启动dos界面  
systemctl set-default graphical.target

4. centos7 安装VirtualBox 增强工具
cd /run/media/root/VBox_GAs_6.0.24  
./VBoxLinuxAdditions.run  
若安装出错：
rpm -qa | grep kernel-devel != uname -r  
安装对应的版本：  
yum install -y kernel-devel-3.10.0-514.el7
参考网站：  
http://rpm.pbone.net/index.php3/stat/4/idpl/44990415/dir/scientific_linux_7/com/kernel-devel-3.10.0-862.el7.x86_64.rpm.html  
5. centos7安装字体  
- 安装 hack 字体  
wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip  
unzip Hack-v3.003-ttf.zip  
mkdir /usr/share/fonts/hack-font  
cd Hack-v3.003-tff  
cp Hack* /usr/share/fonts/hack-font  
- 安装微软开源字体  
wget https://github.com/microsoft/cascadia-code/releases/download/v2009.22/CascadiaCode-2009.22.zip  
unzip CascadiaCode-2009.22.zip  
mkdir /usr/share/fonts/cascadiacode-font  
6. linux vscode 修改文件不编译的问题解决  
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
给目录加777 权限
7. ssh免密登陆
- 服务器生成ssh密钥 ssh-keygen -t rsa  
- 将公钥文件拷贝至目标服务器  
ssh-copy-id -i ~/.ssh/id_rsa.pub root@服务器IP

7. Linux 配置快捷启动命令  
- ~/.bash_profile: 每个用户都可使用该文件输入专用于自己使用的shell信息,当用户登录时,该文件仅仅执行一次!默认情况下,他设置一些环境变量,执行用户的.bashrc文件
- 在~ 目录下新建 .bash_profile 文件
```bash
# .bash_profile
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi
# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH
```
- 在~目录下新建目录：bin，放入只有该用户可执行的快捷命令

## 七、其他知识
Linux 中延时模拟
设置延时 3s :
tc qdisc add dev eth0 root netem delay 3000ms
可以在 3000ms 后面在加上一个延时，比如 ’3000ms 200ms‘表示 3000ms ± 200ms ，延时范围 2800 – 3200 之间.

Linux 中丢包模拟
设置丢包 50% ,iptables 也可以模拟这个，但一下不记的命令了，下次放上来:
tc qdisc change dev eth0 root netem loss 50%
上面的设丢包，如果给后面的 50% 的丢包比率修改成 ’50% 80%’ 时，这时和上面的延时不一样，这是指丢包比率为 50-80% 之间。