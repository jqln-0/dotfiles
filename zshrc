ZSH=$HOME/.oh-my-zsh
ZSH_THEME="jqln"

plugins=(git colored-man history-substring-search)

source $ZSH/oh-my-zsh.sh

export EDITOR="vim"
export TERM="xterm-256color"

# Development stuff
export DEVPATH="/home/jacqui/Development"
export GOPATH=$DEVPATH
# Ensure the directory is named ~DEVPATH rather than ~GOPATH
unhash -d GOPATH
export PATH=$PATH:$GOPATH/bin

# cope
export PATH=$(cope_path):$PATH
