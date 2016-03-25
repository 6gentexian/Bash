# Sample .profile for SuSE Linux
# rewritten by Christian Steinruecken <cstein@suse.de>
#
# This file is read each time a login shell is started.
# All other interactive shells will only read .bashrc; this is particularly
# important for language settings, see below.


test -z "$PROFILEREAD" && . /etc/profile || true



export XDG_CONFIG_DIRS="$HOME/.config/openbox:/etc/xdg"
export BROWSER=/usr/bin/palemoon

export TMPDIR="$HOME/TMP"
export EDITOR=/usr/bin/emacs

export PATH="$PATH:${HOME}/bin"
