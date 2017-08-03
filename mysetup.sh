#!/bin/bash

sudo apt-get install vim curl screen htop

ln -sb ~/dotfiles/.screenrc ~
ln -sb ~/dotfiles/.bash_profile ~
ln -sb ~/dotfiles/.bashrc_custom ~
ln -sb ~/dotfiles/.vimrc ~
ln -sb ~/dotfiles/.gitconfig ~
ln -sb ~/dotfiles/.gitignore_global ~
ln -sb ~/dotfiles/.i3 ~

# Load own bashrc after local bashrc
echo "source ~/dotfiles/.bashrc" >> .bashrc
