#!/bin/sh

rm -rf ~/.vim/

git clone https://github.com/k-takata/minpac.git \
  ~/.vim/pack/minpac/opt/minpac

mkdir -p ~/.vim/autoload
cp ./plugpac.vim ~/.vim/autoload/plugpac.vim
cp ./vimrc ~/.vim/vimrc
vim -c "PackInstall"

