#!/bin/bash
INSTALLDIR=$HOME/.dotfiles

# Vim
ln -sf $INSTALLDIR/vimrc $HOME/.vimrc
ln -sf $INSTALLDIR/Xresources $HOME/.Xresources

# Zsh
ln -sf $INSTALLDIR/zshrc ~/.zshrc
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

# Git
ln -sd $INSTALLDIR/gitconfig $HOME/.gitconfig

