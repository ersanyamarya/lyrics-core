#!/bin/sh

# Install Xcode
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

brew install wget
brew install curl

brew cask install slack
brew install git
brew cask install visual-studio-code

brew install --cask brave-browser

# Install NodeJs
brew install node
echo 'export PATH="/usr/local/opt/node@12/bin:$PATH"' &>> $HOME/.bashrc

brew install golang

brew cask install postman

brew cask install eul

# Install eDEX-UI
wget https://github.com/GitSquared/edex-ui/releases/download/v2.2.3/eDEX-UI-macOS.dmg -P $HOME/Desktop
echo "Install eDEX-UI from Desktop"

# Install docker desktop
wget https://desktop.docker.com/mac/stable/Docker.dmg -P $HOME/Desktop
echo "Install Docker from Desktop"