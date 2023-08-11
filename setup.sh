#!/bin/sh

rm -rf ~/.vim/

git clone https://github.com/k-takata/minpac.git \
  ~/.vim/pack/minpac/opt/minpac
curl -fLo ~/.vim/autoload/plugpac.vim --create-dirs \
  https://raw.githubusercontent.com/bennyyip/plugpac.vim/master/plugpac.vim

cp ./vimrc ~/.vim/vimrc
vim -c "PackInstall"

