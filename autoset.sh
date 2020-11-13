#!/usr/bin/env bash

cd `dirname $0`
cd ../
mv ./vim-conf ./.vimconf
cd ./.vimconf

pos=`pwd`

ln -s $pos/.vimrc ~/.vimrc
ln -s $pos/.vim ~/.vim
ln -s $pos/init.vim ~/.config/nvim/init.vim

vim +PlugInstall +qall > /dev/null
vim +PlugRemoteUpdate +qall > /dev/null
