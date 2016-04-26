#!/bin/bash

rm -rf ./hadoop-common-${HADOOP_VERSION}
rm -rf ./hadoop-hdfs-${HADOOP_VERSION}
rm -rf ./hadoop-mapreduce-${HADOOP_VERSION}
rm -rf ./hadoop-yarn-${HADOOP_VERSION}
rm -rf ./apache-hive-${HIVE_VERSION}
rm -rf ./tez
mkdir ./tez
tar -zxf hadoop-common-${HADOOP_VERSION}.tar.gz
tar -zxf hadoop-hdfs-${HADOOP_VERSION}.tar.gz
tar -zxf hadoop-mapreduce-${HADOOP_VERSION}.tar.gz
tar -zxf hadoop-yarn-project-${HADOOP_VERSION}.tar.gz
tar -zxf apache-hive-${HIVE_VERSION}-bin.tar.gz
tar -zxf tez-${TEZ_VERSION}.tar.gz -C ./tez
mv hadoop-yarn-project-${HADOOP_VERSION} hadoop-yarn-${HADOOP_VERSION}
