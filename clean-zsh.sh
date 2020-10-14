#!/bin/sh

# Imports
. $PWD/bin/functions.sh

# Function calls
define_os

if [ "$TARGET_OS" = 'Linux' ]; then
    sudo apt purge --auto-remove zsh -y
    sudo apt purge --auto-remove powerline -y
    sudo apt purge --auto-remove tmux -y
    sudo apt purge --auto-remove bat -y
fi

if [ "$TARGET_OS" = 'Mac' ]; then
    echo "MAC OS"
fi

# clean clutter
rm -rf ~/.oh-my-zsh
rm ~/.zshrc


# Set bash as default shell
chsh -s $(which bash)
