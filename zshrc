#
# Jacqui's .zshrc! Sets up a few handy zsh options, my environment vars
# and loads prezto if it's installed.
#

# Uncomment to profile shell startup if it's opening slower than expected.
#zmodload zsh/zprof

# No need to break completely if prezto isn't installed.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# $PATH customisation
export GOPATH=$HOME/Development
export PATH=$HOME/Development/bin:$PATH

# Set up nvm if needed
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Fix IntelliJ's issues with ibus
export IBUS_ENABLE_SYNC_MODE=1

# Other environment variables
export EDITOR="vim"
export TERM="xterm-256color" # gnome-terminal doesn't set this?

# Zsh options
setopt NO_CASE_GLOB       # Case insensitive globbing
setopt NUMERIC_GLOB_SORT  # What it says on the tin
setopt NO_HUP             # Don't kill backgrounded jobs when closing

# Enable vi-mode. KEYTIMEOUT is set to a much lower value than the default
# to remove the delay when entering normal mode.
export KEYTIMEOUT=1 # 10ms
bindkey -v
bindkey -M vicmd "/" history-incremental-search-backward

# Make the prompt character yellow to indicate we're in insert mode. This is
# a bit of an abuse; the prompt lives in a different file. But whatever, this
# works and it's only a shell config.
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%F{yellow} %% %f"
    ORIGINAL_PROMPT='%(?,%F{green},%F{red}) %% %f'
    PROMPT="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/$ORIGINAL_PROMPT}"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

