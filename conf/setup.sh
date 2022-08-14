# install plugins
# light line plugin
installPlug "itchyny/lightline.vim" &

# plugins for auto pairs quotes
installPlug "jiangmiao/auto-pairs" &

# simple autocomplete plugin
installPlug "ervandew/supertab" &

# nim lang support for vim
# installPlug "https://github.com/zah/nim.vim.git" &
# deprecated shit)

# super puper duper nim support
# installPlug "https://github.com/wsdjeg/vim-nim.git" &
installPlug "ssleert/vin" &

# vscode theme for vim
installPlug "tomasiser/vim-code-dark" &

# floating term for vim
installPlug "voldikss/vim-floaterm" &

# fzf
installPlug "ssleert/fzf.vim" &

# directory manager in vim9script
installPlug "habamax/vim-dir" &

# tree file viewer
installPlug "lambdalisue/fern.vim" &

# simple smooth scroll plugin
installPlug "psliwka/vim-smoothie" &

# solid language pack for vim
installPlug "sheerun/vim-polyglot" &

# git plugin
# installPlug "airblade/vim-gitgutter" &

# brackets rainbow
installPlug "luochen1990/rainbow" &

# async lint engine (recommended)
installPlug "dense-analysis/ale" &

sleep 40

# remove unused files
# remove unused from lightline
removeFile "lightline.vim/colorscheme.md" &
removeFile "lightline.vim/LICENSE" &
removeFile "lightline.vim/README.md" &
removeFile "lightline.vim/test/" &
removeFile "lightline.vim/doc/" &
removeFile "lightline.vim/.git/" &
removeFile "lightline.vim/.gitignore" &
removeFile "lightline.vim/.github/" &
removeFile "lightline.vim/autoload/lightline/colorscheme/" &

# remove unused from auto-pairs
removeFile "auto-pairs/doc/" &
removeFile "auto-pairs/README.md" &
removeFile "auto-pairs/.git/" &
removeFile "auto-pairs/.gitignore" &

# remove unused from supertab
removeFile "supertab/doc/" &
removeFile "supertab/README.rst" &
removeFile "supertab/Makefile" &
removeFile "supertab/.git/" &
removeFile "supertab/.gitignore" &

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
removeFile "vim-floaterm/.gitignore" &
removeFile "vim-floaterm/.github/" &

# remove unused from fzf.vim
removeFile "fzf.vim/.git/" &

# remove unused from vim-dir
removeFile "vim-dir/doc/" &
removeFile "vim-dir/LICENSE" &
removeFile "vim-dir/README.rst" &
removeFile "vim-dir/.git/" &

# remove unused from fern.vim
removeFile "fern.vim/doc/" &
removeFile "fern.vim/LICENSE" &
removeFile "fern.vim/README.md" &
removeFile "fern.vim/test/" &
removeFile "fern.vim/.gitignore" &
removeFile "fern.vim/.github" &
removeFile "fern.vim/.git" &

# remove unused from vim-smoothie
removeFile "vim-smoothie/demo.gif"
removeFile "vim-smoothie/.git"
removeFile "vim-smoothie/.github"
removeFile "vim-smoothie/LICENSE"
removeFile "vim-smoothie/.vintrc.yaml"
removeFile "vim-smoothie/README.md"

# remove unused from vim-polyglot
# i am too lazy to remove unused from polyglot

# remove unused from vim-gitgutter
# removeFile "vim-gitgutter/README.mkd" &
# removeFile "vim-gitgutter/LICENCE" &
# removeFile "vim-gitgutter/screenshot.png" &
# removeFile "vim-gitgutter/test/" &
# removeFile "vim-gitgutter/doc/" &
# removeFile "vim-gitgutter/.git/" &
# removeFile "vim-gitgutter/.github/" &
# removeFile "vim-gitgutter/.gitignore" &

# remove unused from rainbow
removeFile "rainbow/.git/" &
removeFile "rainbow/.github/" &
removeFile "rainbow/.gitignore" &
removeFile "rainbow/LICENSE" &
removeFile "rainbow/NOTICE" &
removeFile "rainbow/README.md" &
removeFile "rainbow/README_zh.md" &
removeFile "rainbow/tests/" &
removeFile "rainbow/doc/" &

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
removeFile "ale/.appveyor.yml" &
removeFile "ale/.editorconfig" &
removeFile "ale/.gitignore" &
removeFile "ale/.vintrc.yaml" &
removeFile "ale/.gitattributes" &
removeFile "ale/.github" &
removeFile "ale/.git/" &
