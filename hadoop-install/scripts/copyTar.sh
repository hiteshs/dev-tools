#!/bin/bash 

if [[ -z ${hiveDir} ]]; then
  hiveDir="/Users/Hitesh/dev/apache/hive/"
fi

if [[ -z ${tezDir} ]]; then
  tezDir="/Users/Hitesh/dev/apache/incubator-tez/"
fi

if [[ -z ${hadoopDir} ]]; then
  hadoopDir="/Users/Hitesh/dev/apache/hadoop-common/"
fi

rm -f hadoop-common-${HADOOP_VERSION}.tar.gz
rm -f hadoop-hdfs-${HADOOP_VERSION}.tar.gz
rm -f hadoop-mapreduce-${HADOOP_VERSION}.tar.gz
rm -f hadoop-yarn-${HADOOP_VERSION}.tar.gz
rm -f apache-hive-${HIVE_VERSION}-bin.tar.gz
rm -f tez-${TEZ_VERSION}.tar.gz

cp -f ${hadoopDir}/hadoop-common-project/hadoop-common/target/hadoop-common-${HADOOP_VERSION}.tar.gz .
cp -f ${hadoopDir}/hadoop-hdfs-project/hadoop-hdfs/target/hadoop-hdfs-${HADOOP_VERSION}.tar.gz .
cp -f ${hadoopDir}/hadoop-mapreduce-project/target/hadoop-mapreduce-${HADOOP_VERSION}.tar.gz .
cp -f ${hadoopDir}/hadoop-yarn-project/target/hadoop-yarn-project-${HADOOP_VERSION}.tar.gz .
cp -f ${hiveDir}/packaging/target/apache-hive-${HIVE_VERSION}-bin.tar.gz  .
cp -f ${tezDir}/tez-dist/target/tez-${TEZ_VERSION}.tar.gz .

#rm -f hadoop-${HADOOP_VERSION}.tar.gz
#cp -f ${hadoopDir}/hadoop-dist/target/hadoop-${HADOOP_VERSION}.tar.gz .

