#!/bin/bash

export HADOOP_ROOT_LOGGER="DEBUG,RFA"
export YARN_ROOT_LOGGER="DEBUG,RFA"
$HADOOP_YARN_HOME/sbin/yarn-daemon.sh start resourcemanager
$HADOOP_YARN_HOME/sbin/yarn-daemon.sh start nodemanager
$HADOOP_YARN_HOME/sbin/yarn-daemon.sh start timelineserver
$HADOOP_MAPRED_HOME/sbin/mr-jobhistory-daemon.sh start historyserver
