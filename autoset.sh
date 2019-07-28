#!/usr/bin/env bash

cd `dirname $0`

ln -s .vimrc ~/.vimrc
ln -s .vim ~/.vim

vim +PlugInstall +qall > /dev/null
