# Summary

  The repo contains two types of files: 1) bash config scripts and 2) bash scripts written help out Arch.
  The first suite of scripts provides a basic configuration for the CLI in an Arch linux installation and a number of aliases for common commands (including those for using git).
  I can't remember where I found the code for this hack, but to whomever wrote it -- thanks a ton!

# Files

## .bashrc
ToDo - user's main config file

## bash.bashrc
bash.bashrc - system's bash config file.  In this case, it gives users a pretty yet very informative prompt and title for their xterm/terminal. The command line is:
```
Command Line Format:
  Prompt:
    Green $   == normal user
    Red #     == root
  Host:
    PWD $     == local session
    PWD [SSH] == secured remote connection (via ssh)
    PWD [FTP] == unsecured remote connection, where [FTP] <-- Bold red
  PWD Lettering (for the user):
    Blue      == more than 10% free disk space
    Orange    == less than 10% free disk space
    Red       == current user does not have write privileges
  Terminal Title Format:
    user@host: PWD, e.g. bob@bobsarchbox ~/bin
```
The terminal prompt is bold and of course updates as you navigate about.  
n.b. For both, 'PWD $', is displayed as:  '~ $'  for the home directory

## .bash_profile
```
// Pretty simple - it sources user's .profile and .bashrc and then starts X
source $HOME/.profile

source $HOME/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
```

# Dependencies

```
~/ $ bash --version
GNU bash, version 4.4.12(1)-release (x86_64-unknown-linux-gnu)
```

# Use

```
Place bash.bashrc in $ /etc
Place .bashrc and .bash_profile in your home directory
```
# NB
```
In order to test changes in the various bash scripts, you must source them, i.e
~/ $ source .bashrc
~/ $ sudo source bash.bashrc
// Though idk whether you need so sudo the latter

I also don't know a non-login way of refreshing/testing the syntax of bash_profile
```

# TODO
## Desc bashrc


# License
