#!/bin/sh


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