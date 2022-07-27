#! /bin/bash

JDK_TAR=jdk-8u181-linux-x64.tar.gz

mkdir /usr/local/java -p

tar -xzf $JDK_TAR -C /usr/local/java
ln -s /usr/local/java/jdk1.8.0_181 /usr/local/java/latest

echo "export JAVA_HOME=/usr/local/java/latest
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar" >> /etc/profile

source /etc/profile

java -version