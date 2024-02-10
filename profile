# ~/.profile

PS1='\$ '
set -o vi
ulimit -c unlimited

EDITOR=$(which vi)  # update-alternative --config EDITOR
alias ls="ls --color=never"
alias tree="tree -n"

export HISTCONTROL="ignoredups:erasedups:ignorespace"
export PROMPT_COMMAND='history -a'
export PATH=$PATH:../boost_1_73_0/stage/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:../boost_1_73_0/stage/lib
