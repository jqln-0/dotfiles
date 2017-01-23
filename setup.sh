#!/bin/bash
INSTALLDIR=$HOME/.dotfiles

# Vim
ln -sf $INSTALLDIR/vimrc $HOME/.vimrc
ln -sf $INSTALLDIR/vimrc $HOME/.ideavimrc

# Zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
ln -sf $INSTALLDIR/zshrc ~/.zshrc
ln -sf $INSTALLDIR/zpreztorc ~/.zpreztorc
ln -sf $INSTALLDIR/zlogin ~/.zlogin
ln -sf $INSTALLDIR/zshenv ~/.zshenv
ln -sf $INSTALLDIR/prompt_jacqui_setup ~/.zprezto/modules/prompt/functions/prompt_jacqui_setup

# Git
ln -sf $INSTALLDIR/gitconfig $HOME/.gitconfig

# Tmux
ln -sf $INSTALLDIR/tmux.conf $HOME/.tmux.conf

