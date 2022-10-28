
***
目录  
[Docker安装](#Docker安装)  
[安装Elasticsearch](#安装Elasticsearch)

***
# Docker

## 一、Linux 安装Docker
参考：https://www.cnblogs.com/caoweixiong/p/12186736.html
1. 查看内核版本：uname -r  
2. 准备：  
yum -y install gcc  
yum -y install gcc-c++  
3. 删除旧版本  
yum remove docker \ docker-client \ docker-client-latest \ docker-common \ docker-latest \ docker-latest-logrotate \ docker-logrotate \ docker-selinux \ docker-engine-selinux \ docker-engine  
4. 安装依赖包：  
yum install -y yum-utils device-mapper-persistent-data lvm2  
5. 设置稳定镜像：  
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo  
6. 更新yum软件包索引：  
yum makecache fast  
7. 列出docker 版本：
yum list docker-ce.x86_64  --showduplicates | sort -r
8. 安装Centos7 
yum install docker-ce-19.03.9 docker-ce-cli-19.03.9 containerd.io
9. 安装Centos8
yum install -y https://mirrors.aliyun.com/docker-ce/linux/centos/7/x86_64/edge/Packages/containerd.io-1.2.13-3.2.el7.x86_64.rpm
10. 安装docker ce  
yum install docker-ce docker-ce-cli containerd.io

配置

启动  
systemctl start docker

修改中国镜像：  
改用中国的 docker 镜像仓库  
阿里云镜像  
修改/etc/docker/daemon.json文件添加：  
```
{
  "registry-mirrors": ["https://6kx4zyno.mirror.aliyuncs.com"]
}
```
https://hub-mirror.c.163.com  
重启  
systemctl daemon-reload     #重启加速配置文件  
systemctl restart docker    #重启docker后台服务

修改DNS  
vi /etc/resolv.conf  
nameserver 8.8.8.8  
nameserver 8.8.8.4

---
HCE 华为云 安装docker
wget https://repo.huaweicloud.com/repository/conf/openeuler_x86_64.repo -O /etc/yum.repos.d/openEuler.repo
yum clean all
yum makecache
yum -y install docker

## 配置Docker镜像加速器
vi /etc/docker/daemon.json
{"registry-mirrors":["https://2lqq34jg.mirror.aliyuncs.com"]}
systemctl daemon-reload
systemctl restart docker
docker info

## 二、Docker 使用
参考：https://docs.docker.com/engine/reference/commandline/  
### 2.1 基本使用命令
1. 查看版本  docker version  
2. 查看docker日志  cat /var/log/docker  
3. 搜索镜像  docker search tomcat  
4. 查看当前所有镜像  docker images  
5. 下载镜像  docker pull centos  
6. 运行容器  docker run centos echo “hello world”  
7. 启动容器 docker start {containerId/containerName}
8. 进入容器 docker exec -it {containerId/containerName} /bin/bash
9. 删除镜像:docker rmi -f {image id}
10. 查找指定image后创建的镜像和依赖关系
docker image inspect --format='{{.RepoTags}} {{.Id}} {{.Parent}}' $(docker image ls -q --filter since=image-name)
11. 删除指定image
docker images | grep image | awk '{print $3}' | xargs docker rmi
12. 删除指定容器
docker rm -f $(docker ps -a | grep "imsage-name" | awk '{print $1}')
13. 查看容器运行日志


### 2.2 搭建 mysql 服务
docker pull mysql:5.7   # 拉取 mysql 5.7  
docker pull mysql       # 拉取最新版mysql镜像  
sudo docker run -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:5.7  
–name：容器名，此处命名为mysql  
-e：配置信息，此处配置mysql的root用户的登陆密码  
-p：端口映射，此处映射 主机3306端口 到 容器的3306端口  
查看容器是否运行  
docker container ls  
docker本地连接mysql客户端  
docker exec -it mysql bash  
mysql -uroot -proot  

数据和配置外置
1. 进入容器
docker exec -it mysql5.7 /bin/bash
2. 查看配置
cat /etc/mysql/my.cnf
3. 在容器外创建同名文件
4. 停止mysql 并删除容器
docker stop mysql5.7 && docker rm mysql5.7
5. 在本地创建挂载目录
mkdir -p /opt/mysql/data
6. 重新创建容器
docker run --name mysql5.7 --restart always --privileged=true -p 4306:3306 -v /opt/mysql/config/mysqld.cnf:/etc/mysql/mysql.conf.d/mysqld.cnf -v /opt/mysql/data:/var/lib/mysql -e MYSQL_USER="fengwei" -e MYSQL_PASSWORD="pwd123" -e MYSQL_ROOT_PASSWORD="rootpwd123" -d mysql:5.7

### 2.3 搭建 redis 服务
docker pull redis  
sudo docker run -p 6379:6379 --name redis -d redis

### 2.4 Docker 生成镜像
- 构建Docker镜像，用于运行，Docker构建镜像的两种方法：  
1.使用docker commit 命令；  
2.使用docker build命令和Dockerfile文件；  
- docker ps -a  
- docker commit {Container Id}  {name:version}  
- 运行  
docker run -d -p 28080:8080 --name {name} -itv /home/root/softwares/:/mnt/software/ {containerId} /bin/bash  

### 2.5 安装Elasticsearch
- docker pull elasticsearch:5.5.0
- docker run -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" -e ES_JAVA_OPTS="-Xms512m -Xmx512m" --name es5 elasticsearch:5.5.0  
9300：集群节点指点的tcp通讯端口  
9200：http协议的web客户端RESTful端口  
- 安装中文分词器
./bin/elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.10.1/elasticsearch-analysis-ik-7.10.1.zip

### 2.6 安装nginx
1. docker pull nginx
  容器内
  日志位置：/var/log/nginx/
  配置文件位置：/etc/nginx/
  项目位置：/usr/share/nginx/html
2. 启动容器
  docker run --name nginx -p 80:80 -d nginx
3. 建目录用于存放nginx配置文件、证书文件
  mkdir /opt/docker/nginx/conf -p
  touch /opt/docker/nginx/conf/nginx.conf
  mkdir /opt/docker/nginx/conf.d -p
  mkdir /opt/docker/nginx/logs -p
  mkdir /opt/docker/nginx/html -p
4. 将容器中相应的文件拷贝到宿主机目录中
  docker cp ee1:/etc/nginx/nginx.conf /opt/docker/nginx/
  docker cp ee1:/etc/nginx/conf.d /opt/docker/nginx/
  docker cp ee1:/usr/share/nginx/html /opt/docker/nginx/
  注：docker cp ee1 中的 "ee1" 为容器ID前缀
5. 编辑nginx.conf
  vim /opt/docker/nginx/nginx.conf
6. 启动
docker run -itd --name nginx -p 80:80 -p 443:443 -v /opt/docker/nginx/html:/usr/share/nginx/html -v /opt/docker/nginx/conf/nginx.conf:/etc/nginx/nginx.conf -v /opt/docker/nginx/conf.d:/etc/nginx/conf.d -v /opt/docker/nginx/logs:/var/log/nginx nginx
说明：-m 限制内存大小
7. 修改配置文件重启
dokcer exec -it nginx nginx -s reload

### 2.7 安装nacos
1. docker pull nacos/nacos-server
2. 挂载目录，用于映射到容器
mkdir -p /data/nacos/logs/  
mkdir -p /data/nacos/init.d/  
vim /data/nacos/init.d/custom.properties
3. nacos url 访问
http://127.0.0.1:8848/nacos

### 2.8 安装rocketmq
1. 搭建网络
docker network create rocketmq
查看网络信息：
docker inspect rocketmq
2. 拉去镜像
docker pull foxiswho/rocketmq:server-4.6.1
docker pull foxiswho/rocketmq:broker-4.6.1
3. 创建数据挂载目录
mkdir -p /data/rocketmq/server01/logs
mkdir -p /data/rocketmq/server01/store
mkdir -p /data/rocketmq/broker01/logs
mkdir -p /data/rocketmq/broker01/store
mkdir -p /data/rocketmq/broker01/conf
mkdir -p /data/rocketmq/console/data
4. 编辑配置文件
vim /data/rocketmq/broker01/conf/broker.conf
```
namesrvAddr=127.0.0.1:9876
brokerClusterName = DefaultCluster
brokerName = broker-a
brokerId = 0
deleteWhen = 04
fileReservedTime = 48
brokerRole = ASYNC_MASTER
flushDiskType = ASYNC_FLUSH
brokerIP1 = 127.0.0.1（宿主机ip）
listenPort=10911
```
5. 运行容器 server01
docker run -d -p 9876:9876 --name rmqserver01 --network rocketmq -e "JAVA_OPT_EXT=-server -Xms128m -Xmx128m -Xmn128m" -e "JAVA_OPTS=-Duser.home=/opt" --privileged=true -v /data/rocketmq/server01/logs:/opt/logs -v /data/rocketmq/server01/store:/opt/store foxiswho/rocketmq:server-4.6.1
6. 运行容器 broker01
docker run -it -d --name rmqbroker01  -p 10911:10911 -p 10909:10909 --privileged=true --network rocketmq -e "NAMESRV_ADDR=rmqserver01:9876" -e "JAVA_OPT_EXT=-server -Xms128m -Xmx128m -Xmn128m" -e "JAVA_OPTS=-Duser.home=/opt" -v /data/rocketmq/broker01/conf/broker.conf:/etc/rocketmq/broker.conf -v /data/rocketmq/broker01/logs:/opt/logs -v /data/rocketmq/broker01/store:/opt/store foxiswho/rocketmq:broker-4.6.1
7. 验证网络
进入broker容器：docker exec -it rmqbroker01 /bin/bash 
ping：ping rmqserver01
8. 部署RocketMQ的管理工具
  - docker pull styletang/rocketmq-console-ng:1.0.0  
  - docker run -d --name rmqconsole -p 18088:8080 \
  --network rocketmq \
  -v /data/rocketmq/console/data:/tmp/rocketmq-console/data \
  -e "JAVA_OPTS=-Drocketmq.namesrv.addr=rmqserver01:9876 -Dcom.rocketmq.sendMessageWithVIPChannel=false -Duser.timezone='Asia/Shanghai' -Drocketmq.config.loginRequired=true -Drocketmq.config.aclEnabled=true" -v /etc/localtime:/etc/localtime -t styletang/rocketmq-console-ng:1.0.0
  - 在
8. 若是腾讯云需要开通端口9876和10911
8. 浏览器访问控制台
http://127.0.0.1:18088/
