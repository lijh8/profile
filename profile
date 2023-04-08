# ~/.profile
# don't use the name ~/.bash_profile even it's bash for lldb
PS1='\$ '
set -o vi  # lldb needs this besides ~/.editrc and ~/.inputrc
EDITOR=$(which vi)  # update-alternative --config EDITOR
alias ls=ls --color=never
ulimit -c unlimited

export HISTCONTROL="ignoredups:erasedups:ignorespace"
export PROMPT_COMMAND='history -a'
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:../boost_1_73_0/stage/lib
