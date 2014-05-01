$HADOOP_YARN_HOME/sbin/yarn-daemon.sh stop resourcemanager
$HADOOP_YARN_HOME/sbin/yarn-daemon.sh stop nodemanager
$HADOOP_YARN_HOME/sbin/yarn-daemon.sh start historyserver
$HADOOP_MAPRED_HOME/sbin/mr-jobhistory-daemon.sh stop historyserver
