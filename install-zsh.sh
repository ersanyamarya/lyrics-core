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
fi

if [ "$TARGET_OS" = 'Mac' ]; then
    echo "MAC OS"
fi

# clean clutter
rm -rf ~/.oh-my-zsh
rm ~/.zshrc

# fonts
cp $PWD/fonts/* ~/.fonts/

# shell scripts
cp $PWD/shell-scripts ~/.scripts

# oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# PowerLevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Syntax Hylighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Auto Suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# .zshrc file
cp $PWD/zshrc ~/.zshrc

# Set zsh as default shell
chsh -s $(which zsh)
