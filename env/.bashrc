#export ANT_HOME=
#export M2_HOME=
export MAVEN_OPTS="-Xms256m -Xmx512m"
export SCALA_HOME=~/Software/scala-2.10.4
export JAVA_HOME=`/usr/libexec/java_home`

export PATH=$PATH:$HOME/bin:${JAVA_HOME}/bin:${SCALA_HOME}/bin:${ANT_HOME}/bin:${M2_HOME}:${M2_HOME}/bin:.

source ~/bin/git-completion.bash
source ~/bin/git-prompt.sh
PS1='[\u@\h \w$(__git_ps1 " (%s)")]\$ '

export FINDBUGS_HOME=~/Software/findbugs-2.0.2
export EDITOR=vi

source $HOME/.bash_history_settings

export CLICOLOR="yes";
export TERM="xterm-color";

alias mvnpkg="mvn clean package -Dtar -Pdist   -DskipTests=true -Dmaven.javadoc.skip=true"
alias mvninst="mvn clean install -DskipTests=true -Dmaven.javadoc.skip=true"

export _JAVA_OPTIONS=" -Djava.awt.headless=true "
