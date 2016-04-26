#!/bin/bash 

source ./deployTez.sh;

${HADOOP_COMMON_HOME}/bin/hadoop fs -mkdir /tmp/in;
${HADOOP_COMMON_HOME}/bin/hadoop fs -mkdir /tmp/in1;
${HADOOP_COMMON_HOME}/bin/hadoop fs -mkdir /tmp/inA;
${HADOOP_COMMON_HOME}/bin/hadoop fs -mkdir /tmp/inB;
${HADOOP_COMMON_HOME}/bin/hadoop fs -mkdir /tmp/inC;
${HADOOP_COMMON_HOME}/bin/hadoop fs -mkdir /tmp/inEmpty;
${HADOOP_COMMON_HOME}/bin/hadoop fs -mkdir -p /tmp/ats/active/;
${HADOOP_COMMON_HOME}/bin/hadoop fs -put ./conf/mapred-site.xml  /tmp/in/;
${HADOOP_COMMON_HOME}/bin/hadoop fs -put ./conf/*.xml  /tmp/in1/;
${HADOOP_COMMON_HOME}/bin/hadoop fs -put ./conf/mapred-site.xml  /tmp/inA/;
${HADOOP_COMMON_HOME}/bin/hadoop fs -put ./conf/yarn-site.xml  /tmp/inB/;
${HADOOP_COMMON_HOME}/bin/hadoop fs -put ./conf/core-site.xml  /tmp/inC/;
${HADOOP_COMMON_HOME}/bin/hadoop fs -mkdir /tmp/testIn1/;
${HADOOP_COMMON_HOME}/bin/hadoop fs -mkdir /tmp/testIn2/;
${HADOOP_COMMON_HOME}/bin/hadoop fs -cp /tmp/inA/mapred-site.xml /tmp/testIn1/foo1.xml
${HADOOP_COMMON_HOME}/bin/hadoop fs -cp /tmp/inA/mapred-site.xml /tmp/testIn2/foo2.xml
