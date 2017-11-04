## Summary

  The repo contains two types of files: 1) bash config scripts and 2) bash scripts written to help out Arch.
  The first suite of scripts provides a basic configuration for the CLI in an Arch linux installation and a number of aliases for common commands (including those for git).
  I can't remember where I found the code for these hacks, but to whomever wrote them -- thanks a ton!

## Files

### .bashrc
User's main config file:
* Sources .bash_aliases
* Creates shortcut functions for:
  * file transfer
  * displaying system information
  * finding files in a given path
  * finding files that contain specific patterns/words
  * automating sequences of git commands e.g. copy, merge

#### .bash_aliases
User's alias file called by ~/.bashrc:
```
 ...
  if [ -f ~/.bash_aliases ] ; then
   source ~/.bash_aliases
  fi
 ...
```

### bash.bashrc
System's bash config file that mainly sets the prompt and path styling. It provides users a pretty yet very informative prompt, path and title for their xterm/terminal. The command line key:
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
The terminal title is bold and of course updates as you navigate about.
n.b. For both the title and prompt, etc 'PATH $', is displayed as:  '~ $'  for the home directory.

### .bash_profile

Sources user's .profile and .bashrc and then starts X
```
source $HOME/.profile

source $HOME/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
```

## Dependencies

```
~/ $ bash --version
GNU bash, version 4.4.12(1)-release (x86_64-unknown-linux-gnu)
```

## Use

```
Place bash.bashrc in $ /etc, set ownership, permissions etc
Place .bashrc, .bash_aliases and .bash_profile in your home directory
```
## NB
```
In order to test changes in the various bash scripts, you must source them, i.e
~/ $ source .bashrc
~/ $ source /etc/bash.bashrc
```

## TODO
test git commands ex init

## License

The MIT License (MIT)
Copyright (c) 2017 6gentexian

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
