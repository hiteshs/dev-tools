#!/bin/bash

#export HADOOP_ROOT_LOGGER="DEBUG,RFA"
#export YARN_ROOT_LOGGER="DEBUG,RFA"
$HADOOP_HDFS_HOME/bin/hdfs namenode -format
$HADOOP_COMMON_HOME/sbin/hadoop-daemon.sh start namenode
$HADOOP_COMMON_HOME/sbin/hadoop-daemon.sh start datanode
