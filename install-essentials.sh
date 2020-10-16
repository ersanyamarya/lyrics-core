#!/bin/sh

# Function calls
. $PWD/bin/functions.sh
define_os
. $PWD/bin/$TARGET_OS/$(basename $0)

mkdir $HOME/.ssh
chmod 0700 $HOME/.ssh
ssh-keygen -t rsa -b 4096 -C "$(whoami)@$TARGET_OS"
git config --global user.name "Sanyam Arya"
git config --global user.email "er.sanyam.arya@gmail.com"