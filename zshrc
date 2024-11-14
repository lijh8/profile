# ~/.zshrc
# macOS

# vi mode
# TAB for filename completion
bindkey -v

EDITOR=/usr/bin/vi
PS1='$ '

set -k
set -o vi

stty -ixon
ulimit -c unlimited
