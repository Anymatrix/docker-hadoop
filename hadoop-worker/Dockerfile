FROM genok/hadoop-base

MAINTAINER Kuporosov Gennadiy <genok@list.ru>

RUN mkdir /opt/mount/datanode-dir && \
    chown hdfs:hadoop /opt/mount/datanode-dir && \
    mkdir /opt/mount/nodemanager-{local,log}-dir && \
    chown yarn:hadoop /opt/mount/nodemanager-{local,log}-dir 

EXPOSE 8020/tcp 8088/tcp 9870/tcp

WORKDIR /home/hadoop

COPY start-worker.sh .

ENTRYPOINT bash start-worker.sh



