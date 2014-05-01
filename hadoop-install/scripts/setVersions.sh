#!/bin/bash 

hadoop_version=$HADOOP_VERSION
tez_version=$TEZ_VERSION
hive_version=$HIVE_VERSION

if [[ -z ${hadoop_version} ]]; then
  hadoop_version="3.0.0-SNAPSHOT"
fi

if [[ -z ${tez_version} ]]; then
  tez_version="0.5.0-incubating-SNAPSHOT"
fi

if [[ -z ${hive_version} ]]; then
  hive_version="0.13.0-SNAPSHOT"
fi
