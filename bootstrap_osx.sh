#!/bin/bash

code_dir='~/code/'
mkdir -p $code_dir
cd $code

git clone https://github.com/altercation/solarized.git
git clone https://github.com/bpurgaso/dotfiles.git
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

#append customizations to zshrc
cat $code_dir.zshrc >> ~/.zshrc


# vim customizations
ln -s $code/solarized/vim-colors-solarized ~/.vim/bundle/vim-colors-solarized
