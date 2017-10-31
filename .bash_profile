#!/bin/bash
#
# ~/.bash_profile
#
#################################################################################

# NB: Do not set the TERM variable from ~/.bashrc or ~/.bash_profile, etc

source $HOME/.profile

source $HOME/.bashrc


[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
