## oh-my-zsh stuff
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="jqln"
plugins=(git colored-man history-substring-search)
source $ZSH/oh-my-zsh.sh

## Aliases
# Stop GTK apps from spouting garbage.
alias xdg-open="xdg-open 2>/dev/null"

## PATH stuff
export DEVPATH="/home/jacqui/Development"
export GOPATH=$DEVPATH
export PATH=$PATH:$DEVPATH/bin
export PATH=$(cope_path):$PATH

## Static directory naming
unhash -d GOPATH

## Misc env vars
export EDITOR="vim"
export TERM="xterm-256color"

