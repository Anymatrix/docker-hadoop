FROM genok/hadoop-base

MAINTAINER Kuporosov Gennadiy <genok@list.ru>

RUN mkdir /opt/mount/namenode-dir && \
    chown hdfs:hadoop /opt/mount/namenode-dir && \
    su - hdfs -c "$HADOOP_HOME/bin/hdfs namenode -format cluster1" 

EXPOSE 8020/tcp 8088/tcp 9870/tcp

WORKDIR /home/hadoop

COPY start-headnode.sh .

ENTRYPOINT bash start-headnode.sh
