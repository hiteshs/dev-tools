#!/bin/bash 

source ./setVersions.sh

if [[ -z ${hiveDir} ]]; then
  hiveDir="/Users/Hitesh/dev/apache/hive/"
fi

if [[ -z ${tezDir} ]]; then
  tezDir="/Users/Hitesh/dev/apache/incubator-tez/"
fi

if [[ -z ${hadoopDir} ]]; then
  hadoopDir="/Users/Hitesh/dev/apache/hadoop-common/"
fi

rm -f hadoop-common-${hadoop_version}.tar.gz
rm -f hadoop-hdfs-${hadoop_version}.tar.gz
rm -f hadoop-mapreduce-${hadoop_version}.tar.gz
rm -f hadoop-yarn-${hadoop_version}.tar.gz
rm -f apache-hive-${hive_version}-bin.tar.gz
rm -f tez-${tez_version}.tar.gz

cp -f ${hadoopDir}/hadoop-common-project/hadoop-common/target/hadoop-common-${hadoop_version}.tar.gz .
cp -f ${hadoopDir}/hadoop-hdfs-project/hadoop-hdfs/target/hadoop-hdfs-${hadoop_version}.tar.gz .
cp -f ${hadoopDir}/hadoop-mapreduce-project/target/hadoop-mapreduce-${hadoop_version}.tar.gz .
cp -f ${hadoopDir}/hadoop-yarn-project/target/hadoop-yarn-project-${hadoop_version}.tar.gz .
cp -f ${hiveDir}/packaging/target/apache-hive-${hive_version}-bin.tar.gz  .
cp -f ${tezDir}/tez-dist/target/tez-${tez_version}.tar.gz .

#rm -f hadoop-${hadoop_version}.tar.gz
#cp -f ${hadoopDir}/hadoop-dist/target/hadoop-${hadoop_version}.tar.gz .

