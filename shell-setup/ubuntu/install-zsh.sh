sudo apt install zsh
sudo apt-get install powerline fonts-powerline

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

## Create .zshrc file

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Syntax Hylighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

## Set zsh as default shell
chsh -s $(which zsh)
