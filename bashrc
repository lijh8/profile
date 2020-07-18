# ~/.bashrc

# sudo chsh -s /bin/bash ljh

PS1='\$ '
#set -o vi  # vi mode, use .inputrc, .editrc instead
alias ls=ls --color=never
ulimit -c unlimited
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:../boost_1_73_0/stage/lib
