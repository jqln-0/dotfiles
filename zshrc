## oh-my-zsh stuff
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="jqln"
plugins=(colored-man history-substring-search)
source $ZSH/oh-my-zsh.sh

## Aliases
# Stop GTK apps from spouting garbage.
alias xdg-open="xdg-open 2>/dev/null"

## PATH stuff
export DEVPATH="/home/jacqui/Development"
export GOPATH=$DEVPATH
export PATH=$PATH:$DEVPATH/bin

# Add cope only if it's installed.
if type cope_path > /dev/null; then
  export PATH=$(cope_path):$PATH
fi

## Static directory naming
unhash -d GOPATH

## Misc env vars
export EDITOR="vim"
export TERM="xterm-256color"

# Make swing apps look like not-garbage.
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
