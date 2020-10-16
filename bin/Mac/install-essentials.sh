#!/bin/sh

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
