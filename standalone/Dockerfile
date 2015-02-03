#FROM tianon/centos:6.5
# This should build off of the base centos image.
FROM centos:6
MAINTAINER Stephen Oakley

ADD Centos-Source.repo /etc/yum.repos.d/Centos-Source.repo
#RUN wget -nv http://public-repo-1.hortonworks.com/HDP/centos6/2.x/GA/2.2.0.0/hdp.repo -O /etc/yum.repos.d/hdp.repo
#ADD CDH.repo /etc/yum.repos.d/CDH.repo

RUN yum install -y epel-release

RUN yum clean all && yum update -y && yum install -y \
    bzip2 \
    curl \
    java-1.7.0-openjdk-devel \
    tar \
    vim \
    wget

# Setup HBase
# NOTE(soakley): HBase 0.99 changes the default ports for everything!!!!!
# RUN wget -nv -O /tmp/hbase.tar.gz http://apache.cs.utah.edu/hbase/hbase-0.99.2/hbase-0.99.2-bin.tar.gz
RUN wget -nv -O /tmp/hbase.tar.gz http://apache.cs.utah.edu/hbase/hbase-0.98.9/hbase-0.98.9-hadoop1-bin.tar.gz
RUN tar xf /tmp/hbase.tar.gz -C /usr/lib/
#RUN ln -sf /usr/lib/hbase-0.99.2 /usr/lib/hbase
RUN ln -sf /usr/lib/hbase-0.98.9-hadoop1 /usr/lib/hbase

RUN mkdir /hadoop
RUN mkdir /hadoop/hbase
RUN mkdir /hadoop/zookeeper

ADD hbase-site.xml /usr/lib/hbase/conf/hbase-site.xml
ADD run-hbase.sh /usr/lib/hbase/bin/run-hbase.sh
#ADD zoo.cfg /etc/zookeeper/conf/zoo.cfg

# Expose the Zookeeper port
EXPOSE 2181

# Expose the HBase REST port
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

# New ports for HBase 0.99.2
EXPOSE 16010
EXPOSE 16020
EXPOSE 16030

ENV HBASE_HOME /usr/lib/hbase
ENV JAVA_HOME /usr/lib/jvm/java-1.7.0
ENV PATH $JAVA_HOME/bin:$HBASE_HOME/bin:$PATH
#CMD $HBASE_HOME/bin/start-hbase.sh
CMD $HBASE_HOME/bin/run-hbase.sh
