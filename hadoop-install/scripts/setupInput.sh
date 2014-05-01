${HADOOP_COMMON_HOME}/bin/hadoop dfs -mkdir -p /tmp/in
${HADOOP_COMMON_HOME}/bin/hadoop dfs -put -f ./grpbyinput/x* /tmp/in/
${HADOOP_COMMON_HOME}/bin/hadoop dfs -ls /tmp/in
