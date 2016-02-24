## bash_profile
#################################################################################

#Do not set the TERM variable from your ~/.bashrc or ~/.bash_profile or similar file
export R_HOME=/usr/lib64/R
export TMPDIR=/home/edward/TMP

###export LD_LIBRARY_PATH=/opt/wx/2.8/lib
###export PYTHONPATH=/usr/lib/python2.7  #$PYTHONPATH:/home/edward/Python/wxPython-src-2.8.12.1/wxPython
###export PATH=$PATH:$PYTHONPATH

export PATH=$PATH:/usr/lib/rstudio/bin
export PATH=$PATH:~/bin
export JAVA_HOME=/usr/lib/jvm/default
#export PATH=$PATH:$JAVA_HOME/bin

export CLASSPATH=$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/jre/lib/rt.jar
export EDITOR=/usr/bin/emacs
export LANG=en_US.UTF-8
export INPUTRC=~/.inputrc


[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
