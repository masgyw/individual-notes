#! /bin/bash
REDISPORT=6379
REDIS_HOME=/usr/local/src/redis-6.0.6/src
EXEC=$REDIS_HOME/redis-server
CLI_EXEC=$REDIS_HOME/redis-cli
CONFIG_FILE=/usr/local/etc/redis/6379.conf
PID_FILE=/var/run/redis_$REDISPORT.pid

# 启动服务
start(){
	if [ -f $PID_FILE ]
    then
        echo "$PID_FILE exists, process is already running or crashed"
    else
        echo "Starting Redis server..."
        sudo $EXEC $CONFIG_FILE
    fi
}

# 停止服务
stop(){
    if [ ! -f $PID_FILE ]
    then
        echo "$PID_FILE does not exist, process is not running"
    else
        PID=$(cat $PID_FILE)
        echo "Stopping ..."
        sudo $CLI_EXEC -p $REDISPORT -a 123456 shutdown 2>/dev/null
        while [ -x /proc/${PID} ]
        do
            echo "Waiting for Redis to shutdown ..."
            sleep 1
        done
        echo "Redis stopped"
    fi
}
# 启动状态
status(){
    if [ -f $PID_FILE ]
    then
        PID=$(cat $PID_FILE)
        echo "$PID_FILE is running，pid=${PID}"
    else
        echo "$PID_FILE is not running"
    fi
}

case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    status)
        status
        ;;
    restart)
        stop
        sleep 1s
        start
        ;;
    *)
        echo "Please use start|stop|restart|status as first argument"
        ;;
esac
