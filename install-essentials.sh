#!/bin/sh

# Imports
. $PWD/bin/functions.sh

# Function calls
define_os

if [ "$TARGET_OS" = 'Linux' ]; then
    
    sudo apt update -y
    sudo apt upgrade -y
    
    sudo apt install wget curl -y
    sudo apt install git-all -y
    sudo snap install --classic code
    sudo snap install slack --classic
    
    # Install NodeJS
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt-get install -y nodejs
    
    # Install Go
    wget https://golang.org/dl/go1.15.2.linux-amd64.tar.gz
    tar -C /usr/local -xzf go1.15.2.linux-amd64.tar.gz
    echo 'export PATH="$PATH:/usr/local/go/bin"' &>> $HOME/.bashrc
    rm go1.15.2.linux-amd64.tar.gz
    
    
    sudo apt-get remove docker docker-engine docker.io containerd runc
    wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/containerd.io_1.3.7-1_amd64.deb
    sudo dpkg -i containerd.io_1.3.7-1_amd64.deb
    rm containerd.io_1.3.7-1_amd64.deb
    
    sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    rm google-chrome-stable_current_amd64.deb
    
    sudo apt install firefox -y
    
    sudo snap install postman
    
    sudo apt install -f
    sudo apt autoremove
fi


if [ "$TARGET_OS" = 'Mac' ]; then
    xcode-select --install
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
    
    brew install wget
    brew install curl
    
    brew cask install slack
    brew install git
    brew cask install visual-studio-code
    
    brew cask install google-chrome
    brew cask install firefox
    
    brew install node
    echo 'export PATH="/usr/local/opt/node@12/bin:$PATH"' &>> $HOME/.bashrc
    
    brew install golang
    
    brew cask install postman
    
    wget https://desktop.docker.com/mac/stable/Docker.dmg -P $HOME/Desktop
    echo "Install Docker from Desktop"
fi


mkdir $HOME/.ssh
chmod 0700 $HOME/.ssh
ssh-keygen -t rsa -b 4096 -C "sanyam@$TARGET_OS"
git config --global user.name "Sanyam Arya"
git config --global user.email "er.sanyam.arya@gmail.com"