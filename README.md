##  README


##  Synopsis   This suite of scripts provides user and system settings for bash and profile type files


##  Files

* .profile has the stuff NOT specifically related to bash, such as environment variables (PATH and friends)

* .bashrc has anything you'd want at an interactive command line.  Ex. command prompt, EDITOR variable, user-specific bash aliases

* .bash_profile should be super-simple and just load .profile and .bashrc (in that order)


##  DEPENDENCIES N/A


##  USE
edit .bashrc
$ cd ~/; emacs .bashrc

Rememeber to source the files after saving
$ source .bashrc


##  NB
Ensure that ~/.bash_login does not exist.
      .bashrc must not output anything

      Anything that should be available to graphical applications OR to sh (or bash invoked as sh) MUST be in ~/.profile
      Anything that should be available only to login shells should go in ~/.profile


##  TODOs

## License
