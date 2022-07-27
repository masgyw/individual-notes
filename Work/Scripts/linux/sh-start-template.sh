#!/bin/bash
RUN_PATH=`pwd`
PWD_PATH="$(cd "$(dirname $0)";pwd)"
PID_FILE=run.pid

HOST_NAME=`hostname`

initEnv() {
    if [ "x$JAVA_OPTS" = "x" ] ; then
        echo "set memory parameters and GC strategy"
        JAVA_OPTS="-server -Xmx512m -Xms512m -XX:+UseG1GC"
    else
        echo "JAVA_OPTS already set in environment; overriding default settings with value: $JAVA_OPTS"
    fi
}

start() {
    initEnv
    nohup java $JAVA_OPTS -jar *.jar >/dev/null 2>&1 &
    echo $! > $PID_FILE
    sleep 5s
    echo "Jar is started"
    exit
}

stop() {
    if [ -f ./$PID_FILE ] 
    then
        kill $(cat ./$PID_FILE)
        rm -f ./$PID_FILE
    else
        echo "$PID_FILE not exists"
    fi
}

cd $RUN_PATH/

case $1 in 
    start)
    start
    ;;
    stop)
    stop
    ;;
    restart)
    stop
    sleep 1s
    start
    ;;
    *)
    echo "arguments start/stop/restart"
    ;;
esac
