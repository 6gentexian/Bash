#!/bin/bash
#
# bash_profile
#
#################################################################################

# Do not set the TERM variable from your ~/.bashrc or ~/.bash_profile or similar file

source ~/.profile

source ~/.bashrc


[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
