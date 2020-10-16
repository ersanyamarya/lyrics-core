#!/bin/sh

# Imports
. $PWD/bin/functions.sh

# Function calls
define_os

if [ "$TARGET_OS" = 'Linux' ]; then
    sudo apt install zsh -y
    sudo apt-get install powerline -y
    sudo apt install tmux -y
    sudo apt install bat -y
    
    # fonts
    mkdir $HOME/.fonts/
    cp $PWD/fonts/* $HOME/.fonts/
fi

if [ "$TARGET_OS" = 'Mac' ]; then
    brew cask install iterm2
    brew install zsh
    brew install python
    pip install --user powerline-status
    brew install tmux
    brew install bat
    
    # fonts
    cp $PWD/fonts/* $HOME/Library/Fonts/
    
fi

# shell scripts
mkdir $HOME/.scripts
cp -rf $PWD/lyrics-shell-scripts/$TARGET_OS* $HOME/.scripts


# clean clutter
rm -rf $HOME/.oh-my-zsh
rm $HOME/.zshrc

# shell scripts
mkdir $HOME/.scripts
cp -rf $PWD/shell-scripts/* $HOME/.scripts

# oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

# PowerLevel9k
git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k

# Syntax Hylighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Auto Suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# .zshrc file
cp $PWD/zshrc $HOME/.zshrc

# Set zsh as default shell
chsh -s $(which zsh)
