${HADOOP_COMMON_HOME}/bin/hadoop dfs -rm -R /tez;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -mkdir /tez;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -put ./tez-${TEZ_VERSION} /tez/
${HADOOP_COMMON_HOME}/bin/hadoop dfs -mkdir /tmp/in;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -mkdir /tmp/in1;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -mkdir /tmp/inA;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -mkdir /tmp/inB;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -mkdir /tmp/inC;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -mkdir /tmp/inEmpty;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -put ./conf/mapred-site.xml  /tmp/in/;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -put ./conf/*.xml  /tmp/in1/;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -put ./conf/mapred-site.xml  /tmp/inA/;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -put ./conf/yarn-site.xml  /tmp/inB/;
${HADOOP_COMMON_HOME}/bin/hadoop dfs -put ./conf/core-site.xml  /tmp/inC/;
