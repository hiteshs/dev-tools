#!/bin/bash

source ./setVersions.sh

if [[ -z ${tezDir} ]]; then
  tezDir="/Users/Hitesh/dev/apache/incubator-tez/"
fi

cp -f ${tezDir}/tez-dist/target/tez-${tez_version}.tar.gz .
rm -rf ./tez-${tez_version}
tar -zxf tez-${tez_version}.tar.gz
${HADOOP_COMMON_HOME}/bin/hadoop dfs -rm -R /tez;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -mkdir /tez;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -put ./tez-${tez_version} /tez/

