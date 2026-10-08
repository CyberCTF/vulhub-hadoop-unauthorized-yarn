#!/bin/sh
# The ResourceManager REST API reports Hadoop 2.8.1 and one active node, without credentials.
set -e
curl -fsS http://resourcemanager:8088/ws/v1/cluster/info | grep -q '"hadoopVersion":"2.8.1"'
curl -fsS http://resourcemanager:8088/ws/v1/cluster/metrics | grep -q '"activeNodes":1'
