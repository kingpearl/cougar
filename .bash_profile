##
# Pearl Bash Profile
# Copyright(c) 2012 King Pearl LLC
# MIT Licensed
##

# Paths
export HOME=/vagrant

export NODE_PATH=/usr/local/lib/node_modules
export ANDROID_HOME=/usr/local/lib/android-sdk

# export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH
# export PATH=/usr/local/go/bin:$PATH
export PATH=~/bin:/usr/local/bin:$PATH

# Sources
source ~/.bashrc

# Message
echo -e "Kernel Information: " `uname -smr`
echo -e "`bash --version`"
echo -ne "Uptime: "; uptime
echo -ne "Server time is: "; date
