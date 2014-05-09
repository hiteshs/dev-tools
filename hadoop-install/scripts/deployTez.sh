#!/bin/bash

if [[ -z ${tezDir} ]]; then
  tezDir="/Users/Hitesh/dev/apache/incubator-tez/"
fi

cp -f ${tezDir}/tez-dist/target/tez-${TEZ_VERSION}.tar.gz .
rm -rf ./tez-${TEZ_VERSION}
tar -zxf tez-${TEZ_VERSION}.tar.gz
${HADOOP_COMMON_HOME}/bin/hadoop dfs -rm -R /tez;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -mkdir /tez;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -put ./tez-${TEZ_VERSION} /tez/

