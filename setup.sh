#!/bin/bash

# Terminator config
mkdir -p ~/.config/terminator
ln -s terminator/config ~/.config/terminator/config

# Vim
ln -s vimrc ~/.vimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
# TODO: Maybe also run BundleInstall and compile YCM?

# Zsh
ln -s zshrc ~/.zshrc
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# For some reason zsh freaks out and doesn't detect this if I make it a link.
# TODO: Work out why.
mkdir -p ~/.oh-my-zsh/custom/themes
cp jqln.zsh-theme ~/.oh-my-zsh/custom/themes/jqln.zsh-theme

