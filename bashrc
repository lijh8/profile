# ~/.bashrc

# sudo chsh -s /bin/bash ljh
# sudo usermod -a -G wheel ljh
# sudo -E env "PATH=$PATH" swift main.swift

PS1='\$ '
EDITOR=$(which vi)  # Fedora 33 (update-alternative --config EDITOR is too complex)
#set -o vi  # vi mode, use .inputrc, .editrc instead
alias ls=ls --color=never
ulimit -c unlimited
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:../boost_1_73_0/stage/lib
