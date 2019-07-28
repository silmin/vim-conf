#!/usr/bin/env bash

cd `dirname $0`

pos=`pwd`

ln -s $pos/.vimrc ~/.vimrc
ln -s $pos/.vim ~/.vim

vim +PlugInstall +qall > /dev/null
