#!/bin/bash
#
<<<<<<< HEAD
# bash_profile
#
#################################################################################

# Do not set the TERM variable from your ~/.bashrc or ~/.bash_profile or similar file

=======
# ~/.bash_profile
#
#################################################################################

# NB: Do not set the TERM variable from ~/.bashrc or ~/.bash_profile, etc
>>>>>>> test

source $HOME/.profile

source $HOME/.bashrc


<<<<<<< HEAD

=======
>>>>>>> test
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
