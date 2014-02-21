ZSH=$HOME/.oh-my-zsh
ZSH_THEME="jreese"

plugins=(git colored-man history-substring-search)

source $ZSH/oh-my-zsh.sh

export EDITOR="vim"
export TERM="xterm-256color"

# Golang stuff
export GOPATH="/home/jacqui/Programming/Go"
export PATH=$PATH:$GOPATH/bin

# cope
export PATH=$(cope_path):$PATH
