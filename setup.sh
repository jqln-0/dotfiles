#!/bin/bash
INSTALLDIR=$HOME/.dotfiles

# Vim
ln -sf $INSTALLDIR/vimrc $HOME/.vimrc
ln -sf $INSTALLDIR/Xresources $HOME/.Xresources
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
# TODO: Maybe also run BundleInstall and compile YCM?

# Zsh
ln -sf $INSTALLDIR/zshrc ~/.zshrc
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

# Git
ln -sd $INSTALLDIR/gitconfig $HOME/.gitconfig

