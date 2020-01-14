#!/usr/bin/env bash

su - hdfs -c "$HADOOP_HOME/bin/hdfs --daemon start datanode"
su - yarn -c "$HADOOP_HOME/bin/yarn --daemon start nodemanager"
# Not best practise, but it helps to create docker container in background:
while true; do sleep 1; done

