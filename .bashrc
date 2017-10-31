<<<<<<< HEAD
=======
#!/bin/bash
#
>>>>>>> test
# ~/.bashrc: executed by bash(1) for non-login shells.
#
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
<<<<<<< HEAD
#################################################################################
=======
################################################################################
>>>>>>> test

# If not running interactively, don't do anything
[ -z "$PS1" ] && return


<<<<<<< HEAD
# some custom ls aliases ----- ####################################################
=======
# some custom ls aliases ----- #################################################
>>>>>>> test
alias home="cd ~"
alias em="emacs -nw"
alias EM="em ~/.emacs"
alias suem="sudo emacs -nw"
<<<<<<< HEAD
alias eml="emacs -nw -q -l ./.emacs "

alias RHOME="cd /usr/lib/R/"
alias RPROFILE="em ~/R/.Rprofile"
alias RENVIRON="em ~/R/.Renviron"
=======
# Edit .emacs WITHOUT LOADING init files
alias eml="emacs -nw -q -l ./.emacs "

alias RHOME="cd /usr/lib/R/"
alias RUSER="~/R"
alias RPROFILE="em RUSER/.Rprofile"
alias RENVIRON="em RUSER/.Renviron"
>>>>>>> test
alias R="R --quiet"

alias rebootWeb="sudo dhclient"
alias BASHRC="em ~/.bashrc"
alias SOURCE="source ~/.bashrc"
alias REBOOT="systemctl reboot"
alias POWEROFF="systemctl poweroff"
<<<<<<< HEAD
alias terminator_ebg="terminator -m -b -l config &"
=======
alias terminator_ebg="terminator -m -b -l ebg &"
>>>>>>> test

alias te="top -u $USER"
alias trr="top -u root"
alias tt="top"
alias cls="clear"

<<<<<<< HEAD
alias GG="gitg --all"
alias GA="git add "
alias GC="git checkout "
alias GS="git status"
alias GB="git branch"
alias GL="git ls-files"
alias GM="git commit -m "
alias GD="git diff --color --stat "


# arch specific commands
alias PACMAN_UPDATE="sudo ~/bin/update.pacman.sh"
#alias REFRESH="sudo pacman -Syy "
=======
# ARCH specific commands
alias PACMAN_UPDATE="sudo ~/bin/update.pacman.sh"
>>>>>>> test
alias PACMAN_REMOVE="sudo pacman -Rns "
alias PACMAN_S="sudo pacman -S "
alias PACMAN_SYU="sudo pacman -Syu "
#alias XLOG="tail -n 20 -f ~/.local/share/xorg/Xorg.0.log"
alias XLOG="em ~/.local/share/xorg/Xorg.0.log"
alias MergeXResources="xrdb -merge ~/.Xresources"
<<<<<<< HEAD
=======
alias LoadXResources="xrdb -load ~/.Xresources"
>>>>>>> test

# Compiler output
alias GCC_ECHO="echo \"int main() { return 0; }\" | gcc -march=native -v -Q -x c - 2>&1"
alias GCC_HELP="gcc -v -Q  -march=native --help=target"

# navigation
alias CD="cd ../"
alias CDCD="cd ../../"

# Use human-readable filesizes
alias df="df -h"
alias du="du -ch --max-depth=1"
alias SIZE="du -ch --max-depth=1 | sort -h; echo 'du -ch --max-depth=1 | sort -h'"
alias DIFF="diff --suppress-common-lines --side-by-side --recursive"


alias SSH_WEG="ssh WEG@Williams-iMac"
alias SSH_MOE="ssh -Y -t -p 2222 edward@moe \"bash\""
alias SSH_CURLY="ssh -Y -t -p 2222 edward@curly \"bash\""

alias ECLIPSE="~/JAVA/eclipse/eclipse -vm /usr/lib/jvm/latest/jre/bin &"
#alias TWS3="cd $HOME/Dropbox/FX/TWS/IBJts/; java -cp jts.jar:total.2013.jar:hsqldb.jar:jcommon-1.0.12.jar:jfreechart-1.0.9.jar:jhall.jar:other.jar:rss.jar -Xmx2048M  jclient.LoginFrame ."
alias TWS="cd $HOME/TWS/IBJts; java -cp jts.jar:total.2013.jar -Xmx512M jclient.LoginFrame ."
# alias TWS2="cd $HOME/Downloads/IBJts; java -cp jts.jar:total.2013.jar -Xmx1536M -XX:MaxPermSize=512M jclient.LoginFrame ."


<<<<<<< HEAD
=======
# GIT aliases ----- ############################################################
alias GG="gitg --all"
alias GA="git add "

alias GM="git commit -m "
alias GAM="git commit -am "

alias GC="git checkout "
alias GS="git status"

alias GB="git branch"
alias GLS="git ls-files"

alias GD="git diff --color --stat "

>>>>>>> test
GIT_INIT()
{
  # Assumes you do your git work in ~/DEV
  # Begin setting up repo
  git init;

  # Copy over boilerplate files
  cp ~/DEV/README* ./;
  cp ~/DEV/LICENSE* ./;
  cp ~/DEV/.gitignore ./;

  # Start master branch
  git add .  ;
  git commit -m "Initial set up -- added README, .gitignore and LICENSE";

  # Create branches from master: First DEVelop, then TEST, then go into PRODuction
  # Where master == prod, but may contain stuff that we don't want git to track
  git checkout -b prod;
<<<<<<< HEAD
  git checkout -b dev;
=======
>>>>>>> test
  git checkout -b test;

  # Thus establishing updating hierarchy:
  # testing (raw mods)-> dev (polished mods)-> prod (production)-> master (public)

  echo
  echo "Initial setup complete!"
  echo
  echo "Now add the project files, folders to the testing branch"
  echo
  echo
}
GCOPY()
{
    if [ $# -eq 0 ]; then

      echo 'Copy in git without merging'
      echo 'copy from (branch/file) master/foo to (branch )gh-pages:'
      echo 'git checkout gh-pages'
      echo 'git checkout master foo'
      echo 'git commit -m Add file foo to gh-pages'
      echo 'DEST=gh-pages($1),  SOURCE=master($2),  FILE=foo($3)'

    fi

    if [ $# -gt 0 ]; then

      echo "Copy in git without merging"
      echo "copy from (branch/file) master/foo to (branch) gh-pages:"
      echo "git checkout gh-pages"
      echo "git checkout master foo"
      echo "git commit -m 'Add file foo to gh-pages.'"
      echo "DEST=$1,  SOURCE=$2,  FILE=$3"

      DEST=$1
      SOURCE=$2
      FILE=$3

      git checkout $DEST
      git checkout $SOURCE $FILE
      git commit -m "Copied file $FILE from $SOURCE to $DEST"

    fi
}
GMERGE()
{
    if [ $# -eq 0 ]; then
      echo 'File-wise Merge:'
      echo 'Copy $FILE from branch $SOURCE into $FILE of branch $DEST'
      echo 'git checkout $DEST'
      echo 'git checkout --patch $SOURCE $FILE'
      echo 'DEST=$DEST,  SOURCE=$SOURCE,  FILE=$FILE'
    fi


    if [ $# -gt 0 ]; then

      echo "File-wise Merge:"
      echo "Copy file $FILE from branch $SOURCE into file $FILE of branch $DEST"
      echo "git checkout $DEST"
      echo "git checkout --patch $SOURCE $FILE"
      echo "DEST=$1,  SOURCE=$2,  FILE=$3"

      DEST=$1;
      SOURCE=$2;
      FILE=$3;

      # Merge file $FILE from SOURCE with file f of DEST
      git checkout $DEST;
      git checkout --patch $SOURCE $FILE;

    fi
}

SCP()
{
  if [ $# -eq 0 ]; then

    # REMINDER FOR SCP SYNTAX
    echo "scp          FROM                    TO"
    echo
    echo "scp -P 1235 ~/LOCAL_FILE  myuser@remoteserver.com:/REMOTE_DIR"
    echo
    echo "scp -P 1235 myuser@remoteserver:/REMOTE_FILE  ~/local_dir"
    echo
    echo 'SCP  FROM=$1  FILE=$2  DEST.DIR=$3  REMOTE.NAME=$4'
  fi

  if [ $# -gt 0 ]; then
    # Are we moving files 'FROM' Local 'TO' Remote or 'FROM' Remote 'TO' Local?
    FROM=$1
    FILE=$2
    DEST_DIR=$3
    REMOTE_NAME=$4

    echo "FROM  =  $FROM"
    echo "FILE  =  $FILE"
    echo "USER  =  $USER"
    echo "PATH  =  $DEST_DIR"
    echo "NAME  =  $REMOTE_NAME"

    if [[ $FROM == local ]]; then

      # Push file from local machine to remote
      scp -P 2222 $FILE $USER@$REMOTE_NAME:$DEST_DIR
      echo "FILE  =  $FILE"
      echo "USER  =  $USER"
      echo "PATH  =  $DEST_DIR"
      echo "NAME  =  $REMOTE_NAME"
    fi

    if [[ $FROM == remote ]]; then
      # Pull file from remote machine to local
      scp -P 2222 $USER@$REMOTE_NAME:$FILE $DEST_DIR
      echo "$FILE"
      echo "$USER"
      echo "PATH  =  $DEST_DIR"
      echo "NAME  =  $REMOTE_NAME"
    fi
  fi
}

TAIL()
{
  journalctl | tail -n $1
}

lm()
{
  ls -al $1 --color | more
}

sulm()
{
  sudo ls -al $1 --color | more
}

pdfextract()
{
  # this uses 3 arguments:
  #     $1 is the first page of the range to extract: pXX
  #     $2 is the last page of the range to extract: pYY
  #     $3 is the input file: inputfile
  #     output file will be named "inputfile_pXX-pYY.pdf"
  gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER \
          -dFirstPage=${1} \
          -dLastPage=${2} \
          -sOutputFile=${3%.pdf}_p${1}-p${2}.pdf \
         ${3}
}

<<<<<<< HEAD
=======
fwf()
{
    ## Find Word in File ---------------------------------------------------------
echo "    grep -rnw '/path/to/somewhere/' -e 'pattern'"
echo "    WHERE:"
echo "        -r or -R is recursive,"
echo "        -n is line number, and"
echo "        -w stands for match the whole word."
echo "        -l (lower-case L) can be added to just give the file name of matching files."
echo ""
echo "    Along with these, --exclude, --include, --exclude-dir or --include-dir flags could be used for efficient searching:"

echo "    This will only search through those files which have .c or .h extensions:"

echo "        grep --include=\*.{c,h} -rnw '/path/to/somewhere/' -e "pattern""

echo "    This will exclude searching all the files ending with .o extension:"

echo "        grep --exclude=*.o -rnw '/path/to/somewhere/' -e "pattern""

echo "        Just like exclude files, it's possible to exclude/include directories through --exclude-dir and --include-dir parameter. For example, this will exclude the dirs dir1/, dir2/ and all of them matching *.dst/:"

echo "        grep --exclude-dir={dir1,dir2,*.dst} -rnw '/path/to/somewhere/' -e "pattern""

  if [ $# -eq 0 ]; then
    echo "# this uses 3 arguments:"
    echo '#     $1 is the ABSOLUTE search path with quotes'
    echo '#     $2 is the file/dir name, e.g. "*hello_world.c" with quotes'
    echo '#     $3 is the tag for file or directory, 'f' or 'd' without quotes'
    echo '#     calls sudo and the 'find' function'
    echo '#     2> file redirects stderr to file'
    echo 'sudo find "$1" -iname "$2" -type "$3" -not -path "~/Dropbox/moe/*" -not -path "/archive/*" -not -path "/backup/*" 2>dev/null'
  fi

   if [ $# -gt 0 ]; then
    sudo find "$1" -iname "$2" -type "$3" -not -path "/home/edward/Dropbox/moe/*" -not -path "/archive/*" -not -path "/backup/*" 2>/dev/null
  fi
}
>>>>>>> test
ff()
{
  if [ $# -eq 0 ]; then
    echo "# this uses 3 arguments:"
    echo '#     $1 is the ABSOLUTE search path with quotes'
    echo '#     $2 is the file/dir name, e.g. "*hello_world.c" with quotes'
    echo '#     $3 is the tag for file or directory, 'f' or 'd' without quotes'
    echo '#     calls sudo and the 'find' function'
    echo '#     2> file redirects stderr to file'
    echo 'sudo find "$1" -iname "$2" -type "$3" -not -path "~/Dropbox/moe/*" -not -path "/archive/*" -not -path "/backup/*" 2>dev/null'
  fi

  if [ $# -gt 0 ]; then
    sudo find "$1" -iname "$2" -type "$3" -not -path "/home/edward/Dropbox/moe/*" -not -path "/archive/*" -not -path "/backup/*" 2>/dev/null
  fi
}


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  . /etc/bash_completion
fi


DF()                # Pretty-print of 'df' output.
{                   # Inspired by 'dfc' utility.
    for fs ; do

      if [ ! -d $fs ]; then
        echo -e $fs" :No such file or directory" ; continue
      fi

      local info=( $(command df -P $fs | awk 'END{ print $2,$3,$5 }') )
      local free=( $(command df -Pkh $fs | awk 'END{ print $4 }') )
      local nbstars=$(( 20 * ${info[1]} / ${info[0]} ))
      local out="["
      for ((j=0;j<20;j++)); do
        if [ ${j} -lt ${nbstars} ]; then
           out=$out"*"
        else
           out=$out"-"
        fi
      done
      out=${info[2]}" "$out"] ("$free" free on "$fs")"
      echo -e $out
    done
}

# Get IP address on ethernet
my_ip() # Get IP address on ethernet.
{
    MY_IP=$(/sbin/ifconfig enp5s0 | awk '/inet/ { print $2 } ' |
      sed -e s/addr://)
    echo ${MY_IP:-"Not connected"}
}

# Get current host related info.
ii()
{
    echo -e "\nYou are logged on ${BRed}$HOST"
    echo -e "\n${BRed}Additionnal information:$NC " ; uname -a
    echo -e "\n${BRed}Users logged on:$NC " ; w -hs |
    cut -d " " -f1 | sort | uniq
    echo -e "\n${BRed}Current date :$NC " ; date
    echo -e "\n${BRed}Machine stats :$NC " ; uptime
    echo -e "\n${BRed}Memory stats :$NC " ; free
    echo -e "\n${BRed}Diskspace :$NC " ; DF / $HOME
    echo -e "\n${BRed}Local IP Address :$NC" ; my_ip
    echo -e "\n${BRed}Open connections :$NC "; netstat -pan --inet;
    echo
}


xset -dpms; xset s off
