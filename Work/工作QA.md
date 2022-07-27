1. Springboot 支持https  
1）生成自签证书（JDK keytool 工具）  
keytool -genkey -alias tomcat -dname "CN=LINUX-CNSHA1206, OU=,O=,L=,ST=,C=" -storetype PKCS12 -keyalg RSA -keysize 2048 -keystore keystore2.p12 -validity 365 -storepass password -ext SAN=dns:,ip:
说明：  
CN：名字与姓氏  
OU：组织单位名称  
O：组织名称  
L：所在的城市或区域名称  
ST：所在的省/市/自治区名称  
C：单位的双字母国家/地区代码  
注意：  
（1）chrome 的版本号，从 58 版本开始，自签证书就只认 SAN 不认 CommonName 了  
（2）自签证书里面设置的 SAN 是 ip 还是域名，目前 chrome 会认域名的，本地测试，建议改host  

2）生成RSA证书  
keytool -genkeypair -alias serverkey -keypass 123456 -storepass 123456 -storetype PKCS12 -dname "C=CN,ST=SH,L=XH,O=GYW,OU=dev,CN=GY" -keyalg RSA -keysize 2048 -validity 3650 -keystore server.p12  
参数说明：  
storepass keystore 文件存储密码  
keypass 私钥加解密密码  
alias 实体别名(包括证书私钥)  
dname 证书个人信息  
keyalg 采用公钥算法，默认是DSA  
keysize 密钥长度(DSA算法对应的默认算法是sha1withDSA，不支持2048长度，此时需指定RSA)  
validity 有效期  
keystore 指定keystore文件  

2. Websocket + SSL 连接不安全的问题，导致无法连接通信，必须手动授权  
导入自签证书，导入方式如下：  
1）进入证书管理界面
Chrome浏览器 -> 隐私设置与安全性 -> 安全 -> 管理证书  
2）选择"受信任的根证书颁发机构"
导入 -> 选择文件 keystore.p12 -> 输入密码：password -> 下一步 -> 完成  
3. virtualBox使用复制的VDI出现UUID重复的错误  
VirtualBox 安装目录下执行：
VBoxManage.exe internalcommands sethduuid {path/filename}.vdi

4. Eclipse 经常不自动编译导致项目运行存在问题
5. 服务器 和 本地html 文件 共享localStorage  
基于tomcat 的虚拟路径配置，可以在服务器访问本地的html 文件，保证在同一个域中，避免跨域问题  
```

```

6. Idea