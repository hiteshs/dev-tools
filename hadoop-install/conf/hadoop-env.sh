#!/bin/sh 

# Set Hadoop-specific environment variables here.

# The only required environment variable is JAVA_HOME.  All others are
# optional.  When running a distributed configuration it is best to
# set JAVA_HOME in this file, so that it is correctly defined on
# remote nodes.

# The java implementation to use.  Required.
# export JAVA_HOME=/usr/lib/j2sdk1.5-sun
#export JAVA_HOME=

# Extra Java CLASSPATH elements.  Optional.
# export HADOOP_CLASSPATH=

# The maximum amount of heap to use, in MB. Default is 1000.
# export HADOOP_HEAPSIZE=2000

# Extra Java runtime options.  Empty by default.
export HADOOP_OPTS=" -Djava.awt.headless=true "

# Command specific options appended to HADOOP_OPTS when specified
#export HADOOP_OPTS=-Dsun.security.krb5.debug=true
#export HADOOP_NAMENODE_OPTS="-Dcom.sun.management.jmxremote $HADOOP_NAMENODE_OPTS"
#export HADOOP_SECONDARYNAMENODE_OPTS="-Dcom.sun.management.jmxremote $HADOOP_SECONDARYNAMENODE_OPTS"
#export HADOOP_DATANODE_OPTS="-Dcom.sun.management.jmxremote $HADOOP_DATANODE_OPTS"
#export HADOOP_BALANCER_OPTS="-Dcom.sun.management.jmxremote $HADOOP_BALANCER_OPTS"
#export HADOOP_JOBTRACKER_OPTS="-Dcom.sun.management.jmxremote $HADOOP_JOBTRACKER_OPTS"
#export HADOOP_TASKTRACKER_OPTS=$HADOOP_OPTS
# The following applies to multiple commands (fs, dfs, fsck, distcp etc)
# export HADOOP_CLIENT_OPTS

# Extra ssh options.  Empty by default.
# export HADOOP_SSH_OPTS="-o ConnectTimeout=1 -o SendEnv=HADOOP_CONF_DIR"

# Where log files are stored.  $HADOOP_HOME/logs by default.
# export HADOOP_LOG_DIR=${HADOOP_HOME}/logs

# File naming remote slave hosts.  $HADOOP_HOME/conf/slaves by default.
# export HADOOP_SLAVES=${HADOOP_HOME}/conf/slaves

# host:path where hadoop code should be rsync'd from.  Unset by default.
# export HADOOP_MASTER=master:/home/$USER/src/hadoop

# Seconds to sleep between slave commands.  Unset by default.  This
# can be useful in large clusters, where, e.g., slave rsyncs can
# otherwise arrive faster than the master can service them.
# export HADOOP_SLAVE_SLEEP=0.1

# The directory where pid files are stored. /tmp by default.
# export HADOOP_PID_DIR=/var/hadoop/pids

# A string representing this instance of hadoop. $USER by default.
# export HADOOP_IDENT_STRING=$USER

# The scheduling priority for daemon processes.  See 'man nice'.
# export HADOOP_NICENESS=10

version=$HADOOP_VERSION
install_dir=${INSTALL_DIR}

if [[ -z ${hadoop_version} ]]; then
  version="3.0.0-SNAPSHOT"
fi

export YARN_NODEMANAGER_OPTS=" -Djava.awt.headless=true "
export YARN_RESOURCEMANAGER_OPTS=" -Djava.awt.headless=true "

export HADOOP_MAPRED_HOME=${install_dir}/hadoop-mapreduce-${hadoop_version}
export HADOOP_COMMON_HOME=${install_dir}/hadoop-common-${hadoop_version}
export HADOOP_PREFIX=$HADOOP_COMMON_HOME
export HADOOP_HDFS_HOME=${install_dir}/hadoop-hdfs-${hadoop_version}
export HADOOP_YARN_HOME=${install_dir}/hadoop-yarn-${hadoop_version}
export HADOOP_CONF_DIR=${install_dir}/conf
export MAPRED_CONF_DIR=$HADOOP_CONF_DIR
export YARN_CONF_DIR=$HADOOP_CONF_DIR