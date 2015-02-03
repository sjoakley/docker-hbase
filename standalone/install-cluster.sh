#!/bin/bash

./ambari-shell.sh << EOF
blueprint defaults
blueprint add --url https://raw.githubusercontent.com/sjoakley/ambari-blueprints/master/src/main/resources/blueprints/single-node-hdfs-hbase
cluster build --blueprint $BLUEPRINT
cluster autoAssign
cluster create --exitOnFinish true
EOF
