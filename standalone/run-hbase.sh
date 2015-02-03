#/bin/bash

start-hbase.sh

hbase-daemon.sh start rest -p 8080

#sleep infinity

while true; do sleep 2; done
