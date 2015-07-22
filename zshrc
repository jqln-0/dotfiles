## oh-my-zsh stuff
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="terminalparty"
plugins=(colored-man history-substring-search)
source $ZSH/oh-my-zsh.sh

## PATH stuff
export PATH=$HOME/Development/bin:$PATH

## Misc env vars
export EDITOR="vim"
export TERM="xterm-256color"
