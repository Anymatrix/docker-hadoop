FROM centos:7
MAINTAINER Kuporosov Gennadiy <genok@list.ru>

COPY ./materials/ .

RUN yum update -y && \
    yum -y install java-1.8.0-openjdk-devel && \
    yum -y install wget && \
    wget https://archive.apache.org/dist/hadoop/common/hadoop-3.1.2/hadoop-3.1.2.tar.gz && \
    tar -xzvf ./hadoop-3.1.2.tar.gz -C /opt && \
    rm hadoop-3.1.2.tar.gz && \
    ln -s /opt/hadoop-3.1.2 /usr/local/  && \
    groupadd hadoop && \
    useradd -g hadoop hadoop && \
    useradd -g hadoop yarn && \
    useradd -g hadoop hdfs && \
    mkdir /opt/mount && \
    mkdir /usr/local/hadoop-3.1.2/logs && \
    chmod 777 /usr/local/hadoop-3.1.2/logs && \
    mv hadoop-env.sh /usr/local/hadoop-3.1.2/etc/hadoop && \
    mv {core,hdfs,yarn}-site.xml /usr/local/hadoop-3.1.2/etc/hadoop
 
ENV HADOOP_HOME=/usr/local/hadoop-3.1.2
    
