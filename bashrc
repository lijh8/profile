# ~/.bashrc

PS1='\$ '
EDITOR=$(which vi)  # Fedora 33 (update-alternative --config EDITOR is too complex)
#set -o vi  # vi mode, use .inputrc, .editrc instead
alias ls=ls --color=never
ulimit -c unlimited
