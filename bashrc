# ~/.bashrc
## put environment variables like PATH in ~/.profile

alias ls="ls --color=never"
EDITOR=/usr/bin/vim
export HISTCONTROL="ignoredups:erasedups"
export PROMPT_COMMAND='history -a'
PS1='\$ '
set -o vi  # set editing-mode vi # ~/.inputrc,
stty -ixon  # terminal flow control Ctrl-S conflicts with vim, emacs.
ulimit -c unlimited  # systemd-coredump
