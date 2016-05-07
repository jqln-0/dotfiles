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

# Other environment variables
export EDITOR="vim"
export TERM="xterm-256color" # gnome-terminal doesn't set this?

# Zsh options
setopt GLOB_COMPLETE      # Auto-expand globs
setopt NO_CASE_GLOB       # Case insensitive globbing
setopt NUMERIC_GLOB_SORT  # What it says on the tin
setopt NO_HUP             # Don't kill backgrounded jobs when closing

# Enable vi-mode with '/' to search history.
bindkey -v
bindkey -M vicmd "/" history-incremental-search-backward

