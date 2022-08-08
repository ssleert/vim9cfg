#!/usr/bin/env sh

installPlug() {
  git clone "https://github.com/$1"
}

removeFile() {
  rm -rfv $1
}

rm -rvf ~/.vim
mkdir -p ~/.vim/pack/default/start
cp src/vimrc ~/.vim/vimrc

# change dir to plugins dir
cd ~/.vim/pack/default/start


# install plugins
# light line plugin
installPlug "itchyny/lightline.vim.git" &

# plugins for auto pairs quotes
installPlug "jiangmiao/auto-pairs.git" &

# simple autocomplete plugin
installPlug "ervandew/supertab.git" &

# nim lang support for vim
# installPlug "https://github.com/zah/nim.vim.git" &
# deprecated shit)

# super puper duper nim support
# installPlug "https://github.com/wsdjeg/vim-nim.git" &
installPlug "ssleert/vin.git" &

# vscode theme for vim
installPlug "tomasiser/vim-code-dark.git" &

# floating term for vim
installPlug "voldikss/vim-floaterm.git" &

# async lint engine (recommended)
installPlug "dense-analysis/ale.git" &

sleep 15

# remove unused files
# remove unused from lightline
removeFile "lightline.vim/colorscheme.md" &
removeFile "lightline.vim/LICENSE" &
removeFile "lightline.vim/README.md" &
removeFile "lightline.vim/test/" &
removeFile "lightline.vim/doc/" &
removeFile "lightline.vim/.git/" &
removeFile "lightline.vim/.gitignore/" &
removeFile "lightline.vim/.github/" &

# remove unused from auto-pairs
removeFile "auto-pairs/doc/" &
removeFile "auto-pairs/README.md" &
removeFile "auto-pairs/.git/" &
removeFile "auto-pairs/.gitignore/" &

# remove unused from supertab
removeFile "supertab/doc/" &
removeFile "supertab/README.rst" &
removeFile "supertab/Makefile" &
removeFile "supertab/.git/" &
removeFile "supertab/.gitignore/" &

# remove unused from vin
removeFile "vin/.git/" &

# remove unused from vim-code-dark
removeFile "vim-code-dark/LICENSE.md" &
removeFile "vim-code-dark/README.md" &
removeFile "vim-code-dark/base16/" &
removeFile "vim-code-dark/.git/" &
removeFile "vim-code-dark/.github/" &

# remove unused from vim-floaterm
removeFile "vim-floaterm/test/" &
removeFile "vim-floaterm/README.md" &
removeFile "vim-floaterm/LICENSE" &
removeFile "vim-floaterm/doc/" &
removeFile "vim-floaterm/bin/" &
removeFile "vim-floaterm/.git/" &
removeFile "vim-floaterm/.gitignore/" &
removeFile "vim-floaterm/.github/" &

# remove unused from ale
removeFile "ale/test/" &
removeFile "ale/rplugin/" &
removeFile "ale/LICENSE" &
removeFile "ale/README.md" &
removeFile "ale/run-tests" &
removeFile "ale/run-tests.bat" &
removeFile "ale/Dockerfile" &
removeFile "ale/supported-tools.md" &
removeFile "ale/test/" &
removeFile "ale/doc/" &
removeFile "ale/.git/" &
removeFile "ale/.appveyor.yml" &
removeFile "ale/.editorconfig" &
removeFile "ale/.gitignore" &
removeFile "ale/.vintrc.yaml" &
removeFile "ale/.gitattributes" &
removeFile "ale/.github" &

# template
# removeFile ""

#
# echo ""
# echo ""
# echo "    Config builded!!!"
# echo "    have a nice day)"
# echo ""
# echo ""
#
