# ~/.bashrc
## put environment variables like PATH in ~/.profile

PS1='\$ '
set -o vi
ulimit -c unlimited
stty -ixon  # terminal flow control Ctrl-S conflicts with vim, emacs.
