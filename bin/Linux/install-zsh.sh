#!/bin/sh

sudo apt install zsh -y
sudo apt-get install powerline -y
sudo apt install bat -y

# fonts
mkdir $HOME/.fonts/
cp $PWD/fonts/* $HOME/.fonts/
