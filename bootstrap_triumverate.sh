#!/bin/bash

# Fail if any sub command fails
set -e

code_dir='~/code/'
mkdir -p $code_dir
cd $code_dir

#install dependencies
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    sudo yum install git vim tmux
elif [["$OSTYPE" == "darwin"* ]]; then
    brew install git macvim tmux reattach-to-user-namespace

git clone https://github.com/altercation/solarized.git
git clone https://github.com/bpurgaso/dotfiles.git
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

#append customizations to zshrc
cat $code_dir.zshrc >> ~/.zshrc
ln -s $code_dir/dotfiles/bunsen.zsh-theme ~/.oh-my-zsh/themes/bunsen.zsh-theme

# vim customizations
ln -s $code_dir/dotfiles/.vimrc ~/.vimrc

# tmux customizations
ln -s $code_dir/dotfiles/.tmux.conf ~/.tmux.conf
