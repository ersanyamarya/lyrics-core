#!/bin/sh
brew cask install iterm2
brew install zsh
brew install python
pip install --user powerline-status
brew install tmux
brew install bat

# fonts
cp $PWD/fonts/* $HOME/Library/Fonts/
    
