#!/bin/bash

sudo apt-get install \
	vim \
	curl \
	screen \
	htop \
	pavucontrol \
	ranger \


ln -sb ~/dotfiles/.screenrc ~
ln -sb ~/dotfiles/.bash_profile ~
ln -sb ~/dotfiles/.bashrc_custom ~
#ln -sb ~/dotfiles/.vimrc ~
ln -sb ~/dotfiles/.gitconfig ~
ln -sb ~/dotfiles/.gitignore_global ~
ln -sb ~/dotfiles/.i3 ~
ln -sb ~/dotfiles/.Xmodmap ~

# Vscode config
ln -s ~/dotfiles/.config/Code/User/settings.json ~/.config/Code/User
ln -s ~/dotfiles/.config/Code/User/keybindings.json ~/.config/Code/User
ln -s ~/dotfiles/.config/Code/User/snippets/ ~/.config/Code/User

# Load bashrc custom after local bashrc
echo "source ~/dotfiles/.bashrc_custom" >> .bashrc

# Install node
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install npm@latest -g
