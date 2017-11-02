#!/bin/bash
#
# ~/.bash_aliases
#
# Load user aliases inside ~/.bashrc:
# ...
#  if [ -f ~/.bash_aliases ] ; then
#   source ~/.bash_aliases
#  fi
# ...
################################################################################
#-------------------------------------------------------------------------------
# Simple aliases for common CLI commands
#-------------------------------------------------------------------------------
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then

    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls="ls --color=auto"

    alias grep="grep -i --color=auto"
    alias fgrep="fgrep --color=auto"
    alias egrep="egrep --color=auto"
fi


#------------------------------------------------------------------------------
#------------------------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls="ls -h --color"
alias lx="ls -lXB"         #  Sort by extension.
alias lk="ls -lSr"         #  Sort by size, biggest last.

alias lt="ls -ltr"         #  Sort by date, most recent last.
alias lc="ls -ltcr"        #  Sort by/show change time,most recent last.
alias la="ls -ltur"        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias lr="ll -R"           #  Recursive ls.
alias ll="ls -alF --group-directories-first -A"

alias ping="ping -c 3"
alias dmesg="dmesg -HL"
# Safety features
alias mv="mv -i"
alias rm="rm -I"

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# Emacs
alias em="emacs -nw"
alias EM="em ~/.emacs"
alias suem="sudo emacs -nw"

# Edit .emacs look and behavior by NOT LOADING init FILES:)
alias eml="emacs -nw -q -l ./.emacs "

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# R
alias rhome="cd /usr/lib/R"
alias ruser="~/R"
alias rprofile="em ruser/.Rprofile"
alias renviron="em ruser/.Renviron"
alias R="R --quiet"

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# BASH
alias BASHRC="em ~/.bashrc"
alias SOURCE="source ~/.bashrc"

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# System, DM
alias REBOOT="systemctl reboot"
alias POWEROFF="systemctl poweroff"
alias terminator_ebg="terminator -m -b -l ebg &"
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

# Use human-readable filesizes
alias df="df -h"
alias du="du -ch --max-depth=1"
alias SIZE="du -ch --max-depth=1 | sort -h; echo 'du -ch --max-depth=1 | sort -h'"

# Display only different entries b/t two files/folders
alias DIFF="diff --suppress-common-lines --side-by-side --recursive"

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# top
alias te="top -u $USER"
alias trr="top -u root"
alias tt="top"
alias cls="clear"

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# ARCH commands
alias pacman_update="sudo ~/bin/update.pacman.sh"
alias pacman_remove="sudo pacman -Rns "
alias pacman_s="sudo pacman -S "
alias pacman_yu="sudo pacman -Syu "

alias yaourt_syu_aur="yaourt -Syu --aur"
alias yaourt_remove="yaourt -R"

alias XLOG="em ~/.local/share/xorg/Xorg.0.log"
alias MergeXResources="xrdb -merge ~/.Xresources"
alias LoadXResources="xrdb -load ~/.Xresources"
#alias XLOG="tail -n 20 -f ~/.local/share/xorg/Xorg.0.log"

#------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# git
alias gg="gitg --all"
alias gadd="git add "

alias gm="git commit -m "
alias gma="git commit -am "

alias gcheckout="git checkout "
alias gstatus="git status"

alias gbranch="git branch -a --color"
alias gls="git ls-files"

alias gdiff="git diff --color --stat "
alias glog="git log --pretty=oneline"

alias gpush="git push"
alias gpull="git pull"

alias gpremote="git checkout master; git push origin master; git remote -v; git remote show origin"
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# Compiler output
alias gcc_echo="echo \"int main() { return 0; }\" | gcc -march=native -v -Q -x c - 2>&1"
alias gcc_help="gcc -v -Q  -march=native --help=target"

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# SSH
alias ssh_weg="ssh WEG@Williams-iMac"
alias ssh_moe="ssh -Y -t -p 2222 $USER@moe \"bash\""
alias ssh_curly="ssh -Y -t -p 2222 $USER@curly \"bash\""

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# Navigation
alias CD="cd ../"
alias CDCD="cd ../../"
alias home="cd ~/"
