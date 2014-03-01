#!/bin/bash
INSTALLDIR=$HOME/.dotfiles

# Terminator config
mkdir -p $HOME/.config/terminator
ln -sf $INSTALLDIR/terminator/config $HOME/.config/terminator/config

# Vim
ln -sf $INSTALLDIR/vimrc $HOME/.vimrc
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
# TODO: Maybe also run BundleInstall and compile YCM?

# Zsh
ln -sf $INSTALLDIR/zshrc ~/.zshrc
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
# For some reason zsh freaks out and doesn't detect this if I make it a link.
# TODO: Work out why.
mkdir -p $HOME/.oh-my-zsh/custom/themes
ln -sf $INSTALLDIR/jqln.zsh-theme $HOME/.oh-my-zsh/custom/themes/jqln.zsh-theme

