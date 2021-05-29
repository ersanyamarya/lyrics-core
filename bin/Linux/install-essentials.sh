#!/bin/sh

sudo apt update -y
sudo apt upgrade -y

sudo apt install wget curl -y
sudo apt install git-all -y
sudo snap install --classic code
sudo snap install slack --classic

# Install NodeJS
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Go
wget https://golang.org/dl/go1.16.4.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.4.linux-amd64.tar.gz
echo 'export PATH="$PATH:/usr/local/go/bin"' &>> $HOME/.bashrc
rm go1.16.4.linux-amd64.tar.gz

# Install docker
sudo apt-get remove docker docker-engine docker.io containerd runc
wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/containerd.io_1.3.7-1_amd64.deb
sudo dpkg -i containerd.io_1.3.7-1_amd64.deb
rm containerd.io_1.3.7-1_amd64.deb

# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install Brave Browser
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Install eDEX-UI
wget https://github.com/GitSquared/edex-ui/releases/download/v2.2.3/eDEX-UI-Linux-arm64.AppImage -P $HOME/Desktop
echo "Install eDEX-UI from Desktop"


wget https://linux.kite.com/dls/linux/current -P $HOME/Desktop
echo "Install Kite from Desktop"

# Install Postman
sudo snap install postman

# Clean
sudo apt install -f
sudo apt autoremove