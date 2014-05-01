#!/bin/bash

rm -rf ./hadoop-common-${hadoop_version}
rm -rf ./hadoop-hdfs-${hadoop_version}
rm -rf ./hadoop-mapreduce-${hadoop_version}
rm -rf ./hadoop-yarn-${hadoop_version}
rm -rf ./apache-hive-${hive_version}
rm -rf ./tez-${tez_version}
tar -zxf hadoop-common-${hadoop_version}.tar.gz
tar -zxf hadoop-hdfs-${hadoop_version}.tar.gz
tar -zxf hadoop-mapreduce-${hadoop_version}.tar.gz
tar -zxf hadoop-yarn-project-${hadoop_version}.tar.gz
tar -zxf apache-hive-${hive_version}.tar.gz
tar -zxf tez-${tez_version}.tar.gz
mv hadoop-yarn-project-${hadoop_version} hadoop-yarn-${hadoop_version}
