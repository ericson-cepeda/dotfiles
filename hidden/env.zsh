# DEV constants

export ANDROID_SDK_ROOT="/Users/${USER}/Library/Android/sdk"
export ANDROID_SDK_HOME="/Users/${USER}/Library/Android/sdk"

PATH="/home/${USER}/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/${USER}/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/${USER}/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/${USER}/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/${USER}/perl5"; export PERL_MM_OPT;

export SCALA_HOME="/usr/local/Cellar/scala"
export SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=2G -Xss2M  -Duser.timezone=GMT"
export PATH=$PATH:$SCALA_HOME/bin:$PATH

# versions: 2.2.1, 2.4.0
export SPARK_HOME="/usr/local/Cellar/apache-spark/2.4.0/libexec"
export HADOOP_DIR="/Users/${USER}/repos/opt/hadoop-2.8.4"
#export HADOOP_DIR="/usr/local/Cellar/hadoop/2.8.2"
export HADOOP_HOME="$HADOOP_DIR"
export HADOOP_PREFIX="$HADOOP_DIR"
#export HADOOP_CONF_DIR=$HADOOP_HOME/libexec/etc/hadoop
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export YARN_CONF_DIR=$HADOOP_HOME/etc/hadoop


#export HADOOP_INSTALL=$HADOOP_HOME
#export HADOOP_MAPRED_HOME=$HADOOP_HOME
#export HADOOP_COMMON_HOME=$HADOOP_HOME
#export HADOOP_HDFS_HOME=$HADOOP_HOME
#export YARN_HOME=$HADOOP_HOME
#export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
#export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
#export HADOOP_CONF_DIR=$HADOOP_HOME
#export HADOOP_PREFIX=$HADOOP_HOME
#export HADOOP_LIBEXEC_DIR=$HADOOP_HOME/libexec
#export JAVA_LIBRARY_PATH=$HADOOP_HOME/lib/native:$JAVA_LIBRARY_PATH
#export HADOOP_CONF_DIR=$HADOOP_PREFIX/etc/hadoop


export SPARK_MAJOR_VERSION=2.4.0
export SPARK_LOCAL_IP=127.0.0.1
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
#export PYTHONPATH=$SPARK_HOME/python3/lib/py4j-0.9-src.zip:$PYTHONPATH

export PATH=/Library/TeX/texbin:$PATH

# Golang
export GOPATH="$HOME/go"
PATH="$GOPATH/bin:$PATH"

# GPG
GPG_TTY=$(tty)
export GPG_TTY

# Pipenv
export WORKON_HOME=$HOME/repos/.virtualenvs