#!/bin/sh

# Function calls
. $PWD/bin/functions.sh
define_os
. $PWD/bin/$TARGET_OS/$(basename $0)

# shell scripts
mkdir $HOME/.scripts
cp -rf $PWD/lyrics-shell-scripts/$TARGET_OS/* $HOME/.scripts


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
cp $PWD/config/zshrc $HOME/.zshrc
cat $PWD/config/$TARGET_OS/zshrc &>> $HOME/.zshrc

# Set zsh as default shell
chsh -s $(which zsh)
