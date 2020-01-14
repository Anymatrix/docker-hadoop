#!/usr/bin/env bash

docker network create hadoop-network

docker pull genok/hadoop-headnode
docker run -p 8020:8020 -p 8088:8088 -p 9870:9870 --network=hadoop-network --name=headnode -d genok/hadoop-headnode

docker pull genok/hadoop-worker
docker run --network=hadoop-network --name=worker -d genok/hadoop-worker

xdg-open http://localhost:8088
xdg-open http://localhost:9870
