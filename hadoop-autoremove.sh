#!/usr/bin/env bash

docker stop worker
docker stop headnode

docker rm worker
docker rm headnode

docker rmi genok/hadoop-headnode
docker rmi genok/hadoop-worker

docker network remove hadoop-network
