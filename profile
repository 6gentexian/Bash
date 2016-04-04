# /etc/profile

#Set our umask
umask 022

# Load profiles from /etc/profile.d
if test -d /etc/profile.d/; then
    for profile in /etc/profile.d/*.sh; do
        test -r "$profile" && . "$profile"
    done
    unset profile
fi

# Source global bash config
if test "$PS1" && test "$BASH" && test -r /etc/bash.bashrc; then
    . /etc/bash.bashrc
fi

# Termcap is outdated, old, and crusty, kill it.
unset TERMCAP

# Man is much better than us at figuring this out
unset MANPATH

# Because tmpfs is mounted on /tmp in Arch by default
export TMPDIR="/tmp"


export LANG=en_US.UTF-8
export LC_ALL=${LANG}

export R_HOME=/usr/lib64/R
export JAVA_HOME=/usr/lib/jvm/default

# Set our default path
PATH="/usr/local/sbin:/usr/local/bin:/usr/bin"
PATH="$PATH:R_HOME/bin"
PATH="$PATH:$JAVA_HOME/bin"
export PATH

export CLASSPATH="$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/jre/lib/rt.jar"
