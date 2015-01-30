FROM sequenceiq/ambari:1.7.0
MAINTAINER Stephen Oakley

# warm up the image
#ADD hdp.repo /etc/yum.repos.d/hdp.repo
#RUN yum install -y ambari-log4j hadoop hadoop-libhdfs hadoop-lzo hadoop-lzo-native hadoop-mapreduce hadoop-mapreduce-historyserver hadoop-yarn hadoop-yarn-nodemanager hadoop-yarn-proxyserver hadoop-yarn-resourcemanager lzo net-snmp net-snmp-utils snappy snappy-devel unzip zookeeper hbase

# Add the new install cluster script.
ADD install-cluster.sh /tmp/

# Expose the Ambari ports
# Ambari Master UI
EXPOSE 8080

# Expose HBase ports
# HMaster
EXPOSE 60000
# HMaster UI
EXPOSE 60010
# Region Server
EXPOSE 60020
# Region Server Region UI
EXPOSE 60030
