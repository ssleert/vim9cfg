# lets install plugins

# light line plugin
(
  installPlug "itchyny/lightline.vim"
  # remove unused from lightline
  removeFile "lightline.vim/colorscheme.md"
  removeFile "lightline.vim/LICENSE"
  removeFile "lightline.vim/README.md"
  removeFile "lightline.vim/test/"
  removeFile "lightline.vim/doc/"
  removeFile "lightline.vim/.git/"
  removeFile "lightline.vim/.gitignore"
  removeFile "lightline.vim/.github/"
  removeFile "lightline.vim/autoload/lightline/colorscheme/"
) &

# plugins for auto pairs quotes
(
  installPlug "jiangmiao/auto-pairs"
  # remove unused from auto-pairs
  removeFile "auto-pairs/doc/"
  removeFile "auto-pairs/README.md"
  removeFile "auto-pairs/.git/"
  removeFile "auto-pairs/.gitignore"
) &

# auto trigger autocompletion
(
  installPlug "vim-scripts/AutoComplPop"
  # remove unused from AutoComplPop
  removeFile "AutoComplPop/doc/"
  removeFile "AutoComplPop/.git/"
  removeFile "AutoComplPop/README"
) &

# simple plugin to handle vim default autocomplete features
(
  installPlug "ervandew/supertab"
  # remove unused from supertab
  removeFile "supertab/doc/"
  removeFile "supertab/README.rst"
  removeFile "supertab/Makefile"
  removeFile "supertab/.git/"
  removeFile "supertab/.gitignore"
) &

# super puper duper nim support
(
  installPlug "ssleert/vin"
  # remove unused from vin
  removeFile "vin/.git/"
) &

# my favorite vscode theme for vim
(
  installPlug "tomasiser/vim-code-dark"
  # remove unused from vim-code-dark
  removeFile "vim-code-dark/LICENSE.md"
  removeFile "vim-code-dark/README.md"
  removeFile "vim-code-dark/base16/"
  removeFile "vim-code-dark/.git/"
  removeFile "vim-code-dark/.github/"
) &

# distraction-free mode for vim))
(
  installPlug "junegunn/goyo.vim"
  # remove unused from goyo.vim
  removeFile "goyo.vim/.git/"
  removeFile "goyo.vim/.github/"
  removeFile "goyo.vim/.gitignore"
  removeFile "goyo.vim/LICENSE"
  removeFile "goyo.vim/README.md"
  removeFile "goyo.vim/.gitattributes"
  removeFile "goyo.vim/doc/"
) &

# fzf
(
  installPlug "junegunn/fzf.vim"
  # remove unused from fzf.vim
  removeFile "fzf.vim/.git/"
  removeFile "fzf.vim/doc/"
  removeFile "fzf.vim/.github/"
  removeFile "fzf.vim/README.md"
  removeFile "fzf.vim/LICENSE"
  removeFile "fzf.vim/.gitignore"
  removeFile "fzf.vim/.gitattributes"
) &
(
  installPlug "ssleert/fzf"
  # remove unused from fzf
  removeFile "fzf/.git/"
) &

# simple file manager written in pure vim9script
(
  installPlug "habamax/vim-dir"
  # remove unused from vim-dir
  removeFile "vim-dir/doc/"
  removeFile "vim-dir/LICENSE"
  removeFile "vim-dir/README.rst"
  removeFile "vim-dir/.git/"
) &


# tree file viewer and meybe manager)
(
  installPlug "lambdalisue/fern.vim"
  # remove unused from fern.vim
  removeFile "fern.vim/doc/"
  removeFile "fern.vim/LICENSE"
  removeFile "fern.vim/README.md"
  removeFile "fern.vim/test/"
  removeFile "fern.vim/.gitignore"
  removeFile "fern.vim/.github"
  removeFile "fern.vim/.git"
) &

# solid language pack for vim
(
  installPlug "sheerun/vim-polyglot"
  # remove unused from vim-polyglot
  # i am too lazy to remove unused from polyglot
) &

# brackets rainbow like in vscode
(
  installPlug "luochen1990/rainbow"
  # remove unused from rainbow
  removeFile "rainbow/.git/"
  removeFile "rainbow/.github/"
  removeFile "rainbow/.gitignore"
  removeFile "rainbow/LICENSE"
  removeFile "rainbow/NOTICE"
  removeFile "rainbow/README.md"
  removeFile "rainbow/README_zh.md"
  removeFile "rainbow/tests/"
  removeFile "rainbow/doc/"
) &

# highlight color by color code
(
  installPlug "ap/vim-css-color"
  # remove unused from vim-css-color
  removeFile "vim-css-color/.git/"
  removeFile "vim-css-color/tests/"
  removeFile "vim-css-color/LICENSE"
  removeFile "vim-css-color/README.md"
  removeFile "vim-css-color/.gitattributes"
) &

# go support for vim)))
(
  installPlug "fatih/vim-go"
) &

# async lint engine (recommended)
(
  installPlug "dense-analysis/ale"
  # remove unused from ale
  removeFile "ale/test/"
  removeFile "ale/rplugin/"
  removeFile "ale/LICENSE"
  removeFile "ale/README.md"
  removeFile "ale/run-tests"
  removeFile "ale/run-tests.bat"
  removeFile "ale/Dockerfile"
  removeFile "ale/supported-tools.md"
  removeFile "ale/test/"
  removeFile "ale/doc/"
  removeFile "ale/.appveyor.yml"
  removeFile "ale/.editorconfig"
  removeFile "ale/.gitignore"
  removeFile "ale/.vintrc.yaml"
  removeFile "ale/.gitattributes"
  removeFile "ale/.github"
  removeFile "ale/.git/"
) &
