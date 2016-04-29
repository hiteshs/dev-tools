#!/bin/bash

if [[ "${tezDir}" == "" ]]; then
  tezDir="/Users/Hitesh/dev/apache/tez/"
fi

cp -f ${tezDir}/tez-dist/target/tez-${TEZ_VERSION}.tar.gz .
rm -rf ./tez
mkdir ./tez
tar -zxf tez-${TEZ_VERSION}.tar.gz -C ./tez
${HADOOP_COMMON_HOME}/bin/hadoop dfs -rm -R /tez;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -mkdir /tez;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -put ./tez-${TEZ_VERSION}.tar.gz /tez/

mkdir -p ./tez/ui/
cd ./tez/ui
jar -xvf ../tez-ui-${TEZ_VERSION}.war
cd -

#sed -i '' -e "s/\/\/ timelineBaseUrl/timelineBaseUrl/g" ./tez/ui/scripts/configs.js
#sed -i '' -e "s/\/\/ RMWebUrl/RMWebUrl/g" ./tez/ui/scripts/configs.js
