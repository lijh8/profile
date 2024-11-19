# ~/.bashrc
## put environment variables like PATH in ~/.profile

alias ls="ls --color=never"
alias tree="tree -n"
EDITOR=/usr/bin/vi

export HISTCONTROL="ignoredups:erasedups:ignorespace"
export PROMPT_COMMAND='history -a'
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:../boost_1_73_0/stage/lib
export PATH=$PATH:../boost_1_73_0/stage/lib

PS1='\$ '
set -o vi  # set editing-mode vi # ~/.inputrc,
stty -ixon  # terminal flow control Ctrl-S conflicts with vim, emacs.
#stty columns 80
ulimit -c unlimited  # systemd-coredump
