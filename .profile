# Sample .profile for SuSE Linux
# rewritten by Christian Steinruecken <cstein@suse.de>
#
# This file is read each time a login shell is started.
# All other interactive shells will only read .bashrc; this is particularly
# important for language settings, see below.


LANG        DEFAULT=en_US.UTF-8
LC_ALL      DEFAULT=${LANG}

XDG_CONFIG_DIRS	DEFAULT="$HOME/.config/openbox:/etc/xdg"
BROWSER     DEFAULT=/usr/bin/palemoon

R_HOME		DEFAULT=/usr/lib64/R
JAVA_HOME	DEFAULT=/usr/lib/jvm/default

TMPDIR		DEFAULT="$HOME/TMP"
EDITOR		DEFAULT=/usr/bin/emacs

PATH		DEFAULT=$PATH:${HOME}/bin:/bin:/usr/local/bin/X11:/usr/bin/X11
PATH		DEFAULT=$PATH:/usr/lib/rstudio/bin
PATH		DEFAULT=$PATH:$JAVA_HOME/bin

CLASSPATH	DEFAULT=$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/jre/lib/rt.jar
INPUTRC		DEFAULT="$HOME/.inputrc"



test -z "$PROFILEREAD" && . /etc/profile || true
