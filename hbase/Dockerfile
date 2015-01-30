FROM sequenceiq/ambari:1.7.0
MAINTAINER Stephen Oakley

# warm up the image
#ADD hdp.repo /etc/yum.repos.d/hdp.repo
#RUN yum install -y ambari-log4j hadoop hadoop-libhdfs hadoop-lzo hadoop-lzo-native hadoop-mapreduce hadoop-mapreduce-historyserver hadoop-yarn hadoop-yarn-nodemanager hadoop-yarn-proxyserver hadoop-yarn-resourcemanager lzo net-snmp net-snmp-utils snappy snappy-devel unzip zookeeper hbase

# Add the new install cluster script.
ADD install-cluster.sh /tmp/
