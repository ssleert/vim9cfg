#!/usr/bin/env sh

installPlug() {
  git clone $1
}

rm -rvf ~/.vim
mkdir -p ~/.vim/pack/default/start
cp src/vimrc ~/.vim/vimrc
cd ~/.vim/pack/default/start

# install plugins
# light line plugin
installPlug "https://github.com/itchyny/lightline.vim.git" &

# plugins for auto pairs quotes
installPlug "https://github.com/jiangmiao/auto-pairs.git" &

# simple autocomplete plugin
installPlug "https://github.com/ervandew/supertab.git" &

# nim lang support for vim
installPlug "https://github.com/zah/nim.vim.git" &

# vscode theme for vim
installPlug "https://github.com/tomasiser/vim-code-dark.git" &

# floating term for vim
installPlug "https://github.com/voldikss/vim-floaterm.git" &

# async lint engine (recommended)
installPlug "https://github.com/dense-analysis/ale.git" &



