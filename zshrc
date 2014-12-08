## oh-my-zsh stuff
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="terminalparty"
plugins=(colored-man history-substring-search)
source $ZSH/oh-my-zsh.sh

## PATH stuff
export DEVPATH="$HOME/Development"
export GOPATH=$DEVPATH
export PATH=$PATH:$DEVPATH/bin

## Misc env vars
export EDITOR="vim"
export TERM="xterm-256color"
