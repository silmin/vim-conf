#!/usr/bin/env bash

cd `dirname $0`
cd ../
mv ./vim-conf ./.vimconf
cd ./.vimconf

pos=`pwd`

echo "Link .vimrc init.vim .vim/"
ln -s $pos/.vimrc ~/.vimrc
ln -s $pos/.vim ~/.vim
ln -s $pos/init.vim ~/.config/nvim/init.vim

echo "Install Plugins - Vim"
vim +PlugInstall +qall > /dev/null
vim +PlugRemoteUpdate +qall > /dev/null
echo "Install Plugins - NeoVim"
nvim +PlugInstall +qall > /dev/null
nvim +PlugRemoteUpdate +qall > /dev/null
