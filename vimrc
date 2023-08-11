vim9script

# prevent by loading default plugins
const g:netrw_silent = 0
const g:loaded_rrhelper = 1
const g:loaded_gzip = 1
const g:loaded_getscriptPlugin = 1
const g:loaded_vimballPlugin = 1
const g:loaded_netrwPlugin = 1
const g:loaded_zipPlugin = 1
const g:loaded_manpager = 1
const g:loaded_spellfile = 1
const g:loaded_tohtml = 1
const g:loaded_2html_plugin = 1
#const g:loaded_fzf: bool = 1
#const g:loaded_matchparen: bool = 1
const g:loaded_logiPat = 1
const g:loaded_tarPlugin = 1
const g:netrw_use_noswf = 0

# disable loading of line plugins
const g:loaded_airline = 1
const g:loaded_lightline = 1

# plugins
plugpac#Begin({
  status_open: "vertical",
  verbose: 2,
})

  Pack "k-takata/minpac", {"type": "opt"}
  #Pack "itchyny/lightline.vim" # not loaded. themes base for qline
  #Pack "Bakudankun/qline.vim"
  Pack "Eliot00/auto-pairs"
  Pack "Angluca/acp"
  Pack "ervandew/supertab"
  Pack "tomasiser/vim-code-dark"
  #Pack "junegunn/fzf.vim"
  #Pack "junegunn/fzf"
  Pack "Donaldttt/fuzzyy"
  Pack "habamax/vim-dir"
  Pack "lambdalisue/fern.vim"
  Pack "sheerun/vim-polyglot"
  Pack "luochen1990/rainbow"
  Pack "ap/vim-css-color"
  Pack "dense-analysis/ale"
  Pack "tpope/vim-sensible"

plugpac#End()

# drop vi compatibility
set nocompatible

# codedark config
const g:codedark_modern = 1
const g:codedark_italics = 1
#const g:codedark_transparent = 1

# theme and font
syntax on
colorscheme codedark
set termguicolors # truecolor support

# qline colorscheme
const g:qline_config = {
  colorscheme: "lightline:codedark",
}

# lightline colorscheme
const g:lightline = {
  "colorscheme": "codedark"
}

# i want that
set ttyfast
set lazyredraw

# disable gui dialogs
set guioptions=c
set enc=utf-8
set t_Co=256
set t_ut=
set renderoptions=gamma:1.5,contrast:0.5,geom:1,renmode:5,taamode:1,level:0.5
set guifont=MesloLGSDZ\ Nerd\ Font\ Mono\ 10 # font for gui

# hide tildes
highlight EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#1e1e1e guifg=#1e1e1e

# set theme bg for gui terminal
highlight Terminal ctermbg=NONE ctermfg=NONE guibg=#1e1e1e guifg=#d4d4d4

if (has('termguicolors') && &termguicolors) || has('gui_running')
  g:terminal_ansi_colors = [
    '#000000', '#cd3131', '#0dbc79',
    '#e5e510', '#2472c8', '#bc3fbc', 
    '#11a8cd', '#e5e5e5',
  
    '#666666', '#f14c4c', '#23d18b', 
    '#f5f543', '#3b8eea', '#d670d6', 
    '#29b8db', '#e5e5e5',
  ]
endif

# no timeout on mode switching
set notimeout
set nottimeout

# scroll padding
# or margin
# idk
set scrolloff=5

# search
set ignorecase
set incsearch
set hlsearch
set shortmess-=S

# numbers and relativenumbers
set number
set relativenumber

# cursor
#set cursorline

# dont show current mode
#set noshowmode

# active status lines (for lightline)
set laststatus=2
set showtabline=2

# hide command line
#set cmdheight=0

# indent
set shiftwidth=2
set tabstop=2
set smarttab
set smartindent
set autoindent
set expandtab

# folds
set foldmethod=indent
set nofoldenable

# allow cursor to move where there is no text in visual block mode
#set virtualedit=block

# filetypes plugins
filetype plugin indent on

# auto read file
set autoread
set updatetime=200

# wild menu for autocomplete command on command mode
set wildmenu
set wildoptions=pum
set pumheight=10

# enable mouse mode in all modes
set mouse=a

# enable clipboard support
# set clipboard=unnamedplus # only for +clipboard option(
set pastetoggle=<F1> # paste mode bind

# correct splits
set splitbelow
set splitright

# enable autocomplete on tab
set omnifunc=ale#completion#OmniFunc
set completeopt=menu,preview
set completepopup=height:10
const g:SuperTabDefaultCompletionType = "<C-n>"

# linters
g:ale_linters = {
  "nim": ["nimlsp", "nimcheck"],
  "python": ["flake8", "pylint", "pydocstyle", "pycodestyle", "bandit", "mypy"],
}

# formaters
g:ale_fixers = {
  "*": ["remove_trailing_lines", "trim_whitespace"],
  "nim": ["nimpretty"],
  "python": ["black", "isort", "autopep8", "yapf"],
  "go": ["gofmt"]
}

# disable numbers in fern
autocmd FileType fern setlocal norelativenumber | setlocal nonumber

# tabs in go and cpp files
autocmd FileType go setlocal noexpandtab
#autocmd FileType cpp setlocal noexpandtab

autocmd BufEnter *.cc ALEDisable
autocmd BufEnter *.hh ALEDisable
autocmd BufEnter *.cpp ALEDisable

# fern dir symbols
const g:fern#renderer#default#leading = "│"
const g:fern#renderer#default#root_symbol = "┬ "
const g:fern#renderer#default#leaf_symbol = "├─ "
const g:fern#renderer#default#collapsed_symbol = "├─ "
const g:fern#renderer#default#expanded_symbol = "├┬ "

# brackets rainbow
const g:rainbow_active = 1
const g:rainbow_conf = {
  'guifgs': ['yellow', 'lightmagenta', 'lightblue', 'lightcyan'],
  'ctermfgs': ['yellow', 'lightmagenta', 'lightblue', 'lightcyan']
}

# location for viminfo file
set viminfofile=~/.vim/viminfo

# cmd aliases
command Buffers FuzzyBuffers
command Files FuzzyFiles
command Cmd FuzzyCommands
command Grep FuzzyGrep
command Search FuzzyInBuffer

# keys
# tabs keys
nnoremap <C-b> :tabnew<CR>
nnoremap <C-c> :tabclose<CR>
nnoremap <C-n> :tabnext<CR>
nnoremap <C-p> :tabprevious<CR>

# save and exit keys
nnoremap <C-q> :q<CR>
nnoremap <C-s> :w<CR>

# spawn floating terminal
nnoremap <C-a> :tabnew<CR>:terminal ++curwin<CR>
nnoremap <C-g> :terminal ++curwin<CR>

# move lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

# format buffer
nnoremap ta :ALEFix<CR>
nnoremap <C-d> :ALEToggle<CR>

# spawn fern.vim file manager
nnoremap tr :Fern . -drawer -width=25 -wait<CR>

# clear last search pattern
nnoremap <C-f> :let @/ = ""<CR>

# change mode from insert to normal
inoremap jk <ESC>
