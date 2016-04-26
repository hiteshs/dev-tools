#!/bin/bash

ln -sf ${HADOOP_HDFS_HOME}/libexec/*-config.sh  ${HADOOP_COMMON_HOME}/libexec/
ln -sf ${HADOOP_YARN_HOME}/libexec/*-config.sh  ${HADOOP_COMMON_HOME}/libexec/
ln -sf ${HADOOP_MAPRED_HOME}/libexec/*-config.sh  ${HADOOP_COMMON_HOME}/libexec/

sh ./hdfs-stop.sh ; sleep 5s;
ps wwaux | grep java | grep -v grep  | wc -l;
sh ./yarn-stop.sh ; sleep 5s;
ps wwaux | grep java | grep -v grep  | wc -l;
rm -rf /tmp/hadoop-* ;
rm -rf /tmp/logs/* ;
rm -rf /tmp/nm-local* ;
rm -rf ./metastore_db/
sh ./hdfs-start.sh ;  sleep 2s;
ps wwaux | grep java | grep -v grep  | wc -l;
sh ./yarn-start.sh ; sleep 2s;
ps wwaux | grep java | grep -v grep  | wc -l;
jps
