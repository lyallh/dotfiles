#!/bin/bash

sudo apt-get install \
	vim \
	curl \
	make \
	htop \
	pavucontrol \
	ranger \
	xbacklight \


ln -sb ~/dotfiles/.screenrc ~
ln -sb ~/dotfiles/.bash_profile ~
ln -sb ~/dotfiles/.bashrc_custom ~
#ln -sb ~/dotfiles/.vimrc ~
ln -sb ~/dotfiles/.gitconfig ~
ln -sb ~/dotfiles/.gitignore_global ~
ln -sb ~/dotfiles/.i3 ~
ln -sb ~/dotfiles/.Xmodmap ~

# Vscode config
mkdir -p ../.config/Code/User
mkdir -p '../.config/Code - Insiders/User'
ln -s ~/dotfiles/.config/Code/User/settings.json ~/.config/Code/User
ln -s ~/dotfiles/.config/Code/User/keybindings.json ~/.config/Code/User
ln -s ~/dotfiles/.config/Code/User/snippets/ ~/.config/Code/User
ln -s ~/dotfiles/.config/Code/User/settings.json ~/'.config/Code - Insiders/User'
ln -s ~/dotfiles/.config/Code/User/keybindings.json ~/'.config/Code - Insiders/User'
ln -s ~/dotfiles/.config/Code/User/snippets/ ~/'.config/Code - Insiders/User'
# Load bashrc custom after local bashrc
echo "source ~/dotfiles/.bashrc_custom" >> ~/.bashrc

# Install node
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install npm@latest -g
