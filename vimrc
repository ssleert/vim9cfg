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
#const g:loaded_airline = 1
#const g:loaded_lightline = 1

# plugins
plugpac#Begin({
  status_open: "vertical",
  verbose: 2,
})

  Pack "k-takata/minpac", {"type": "opt"}

  Pack "vim-airline/vim-airline"
  #Pack "itchyny/lightline.vim" # not loaded. themes base for qline
  #Pack "Bakudankun/qline.vim"
  Pack "jiangmiao/auto-pairs"
  #Pack "Eliot00/auto-pairs" # vim9script auto-pairs alternate
  Pack "mhinz/vim-startify"
  #Pack "Angluca/acp" # vim9script AutoComplPop alternative
  Pack "vim-scripts/AutoComplPop" # more functional than Angluca/acp
  Pack "ervandew/supertab"
  # old and comfy supertab + acp is good
  # but i want more... for example complete for emoji)

  #Pack "prabirshrestha/asyncomplete.vim"
  #Pack "prabirshrestha/asyncomplete-buffer.vim"
  #Pack "prabirshrestha/asyncomplete-emoji.vim"
  #Pack "yami-beta/asyncomplete-omni.vim"
  #Pack "prabirshrestha/asyncomplete-file.vim"
  #Pack "hiterm/asyncomplete-look"

  #Pack "prabirshrestha/asyncomplete-tags.vim"
  ## automatic tags managment
  #Pack "ludovicchabant/vim-gutentags"

  Pack "tomasiser/vim-code-dark"
  #Pack "junegunn/fzf.vim"
  #Pack "junegunn/fzf"
  Pack "ryanoasis/vim-devicons"
  Pack "Donaldttt/fuzzyy"
  Pack "habamax/vim-dir"
  Pack "lambdalisue/fern.vim"
  Pack "lambdalisue/nerdfont.vim"
  Pack "lambdalisue/glyph-palette.vim"
  Pack "lambdalisue/fern-renderer-nerdfont.vim"
  Pack "lambdalisue/fern-git-status.vim"
  #Pack "preservim/nerdtree"
  Pack "sheerun/vim-polyglot"
  Pack "luochen1990/rainbow" # vscode like brackets rainbow
  Pack "Yggdroot/indentLine" # indent guides
  #Pack "preservim/vim-indent-guides" # Indent guides but better
  Pack "joeytwiddle/sexy_scroller.vim"
  #Pack "opalmay/vim-smoothie"
  Pack "ap/vim-css-color"
  Pack "dense-analysis/ale"
  Pack "tpope/vim-sensible"

  # tetris)
  Pack "vim-scripts/TeTrIs.vim"

plugpac#End()

# drop vi compatibility
set nocompatible

g:startify_custom_header = [
  "",
  "      Please be nice with my parents, and maybe I'll thank you)",
  "                  and please don't stay out late",
  "",
  "",
]

# codedark config
const g:codedark_modern = 1
const g:codedark_italics = 1
#const g:codedark_transparent = 1

# theme and font
syntax on
colorscheme codedark
set termguicolors # truecolor support

g:smoothie_update_interval = 2
g:SexyScroller_CursorTime = 10

# qline colorscheme
g:qline_config = {
  colorscheme: "lightline:codedark",
}

# lightline colorscheme
const g:lightline = {
  "colorscheme": "codedark"
}

# airline colorscheme
g:airline_theme = 'codedark'
g:airline#extensions#tabline#enabled = 1
#g:airline#extensions#tabline#formatter = 'unique_tail'
g:airline#extensions#tabline#show_splits = 1
g:airline#extensions#tabline#show_buffers = 0
g:airline_powerline_fonts = 1
#g:airline_section_b = '%{getcwd()}'
g:airline_highlighting_cache = 1
#g:airline_skip_empty_sections = 1

# i want that
set ttyfast
set lazyredraw
set nowrap

# disable gui dialogs
set guioptions=aAkpdc!
set encoding=utf-8
set enc=utf-8
set t_Co=256
set t_ut=
set guifont=CaskaydiaCove\ Nerd\ Font\ Mono\ 14
#set guifont=SauceCodePro\ Nerd\ Font\ Mono\ 14
#set guifont=MesloLGSDZ\ Nerd\ Font\ Mono\ 14 # font for gui

set fillchars=vert:│

# hide tildes
highlight EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#1f1f1f guifg=#1f1f1f

# set theme bg for gui terminal
highlight Terminal ctermbg=NONE ctermfg=NONE guibg=#111111 guifg=#d4d4d4

g:terminal_ansi_colors = [
  '#000000', '#cd3131', '#0dbc79',
  '#e5e510', '#2472c8', '#bc3fbc',
  '#11a8cd', '#e5e5e5',

  '#666666', '#f14c4c', '#23d18b',
  '#f5f543', '#3b8eea', '#d670d6',
  '#29b8db', '#e5e5e5',
]

# no timeout on mode switching
set notimeout
set nottimeout

# scroll padding
# or margin
# idk
set scrolloff=0

# search
set ignorecase
set incsearch
set hlsearch
set shortmess-=S

# numbers and relativenumbers
set number
set relativenumber

# cursor
set cursorline
set cursorcolumn

# dont show current mode
set noshowmode

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
filetype indent on

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
#set completeopt=menu,preview
set completeopt=menuone,noinsert,noselect,preview
set completepopup=height:10
const g:SuperTabDefaultCompletionType = "<C-n>"
const g:SuperTabLongestHighlight = 1

# auto compl pop config
g:acp_behaviorKeywordLength = 1

# some vars for fuzzyy
#g:enable_fuzzyy_MRU_files = 1

## register asyncomplete sources
#call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
#  'name': 'buffer',
#  'allowlist': ['*'],
#  'completor': function('asyncomplete#sources#buffer#completor'),
#  'config': {
#     'max_buffer_size': 5000000,
#   },
#  }))
#
#call asyncomplete#register_source(asyncomplete#sources#emoji#get_source_options({
#  'name': 'emoji',
#  'allowlist': ['text', 'markdown', 'rst'],
#  'completor': function('asyncomplete#sources#emoji#completor'),
#  }))
#
#call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
#  'name': 'omni',
#  'allowlist': ['*'],
#  'completor': function('asyncomplete#sources#omni#completor'),
#  'config': {
#    'show_source_kind': 1,
#  },
#  }))
#
#call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
#  'name': 'file',
#  'allowlist': ['*'],
#  'priority': 10,
#  'completor': function('asyncomplete#sources#file#completor')
#  }))
#
#if executable('ctags')
#  call asyncomplete#register_source(asyncomplete#sources#tags#get_source_options({
#    'name': 'tags',
#    'allowlist': ['c'],
#    'completor': function('asyncomplete#sources#tags#completor'),
#    'config': {
#       'max_file_size': 50000000,
#     },
#    }))
#else
#  g:gutentags_dont_load = 1
#endif
#
#if executable('look')
#  call asyncomplete#register_source({
#    'name': 'look',
#    'allowlist': ['text', 'markdown', 'rst'],
#    'completor': function('asyncomplete#sources#look#completor'),
#    })
#endif

# disable numbers in fern and terminal
autocmd FileType fern setlocal norelativenumber | setlocal nonumber
autocmd TerminalOpen * setlocal norelativenumber | setlocal nonumber

# close completion window when completion is done
#autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

# tabs in go and cpp files
autocmd FileType go setlocal noexpandtab
#autocmd FileType cpp setlocal noexpandtab

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

autocmd BufEnter *.cc ALEDisable
autocmd BufEnter *.hh ALEDisable
autocmd BufEnter *.cpp ALEDisable

# fern config
const g:fern#renderer = "nerdfont"

# brackets rainbow
const g:rainbow_active = 1
const g:rainbow_conf = {
  'guifgs': ['lightmagenta', 'yellow', 'lightblue', 'lightcyan'],
  'ctermfgs': ['lightmagenta', 'yellow', 'lightblue', 'lightcyan']
}

# indent guides
g:indentLine_setColors = 1
g:indentLine_char = '▏'
g:indentLine_fileTypeExclude = ["vimwiki", "help", "undotree", "diff", "startify"]
g:indentLine_bufTypeExclude = ["help", "terminal"]

# indent guides but another plugin
g:indent_guides_enable_on_vim_startup = 1
g:indent_guides_guide_size = 1

# remove trailing whitespaces and lines
g:ale_fixers = {
  "*": ["remove_trailing_lines", "trim_whitespace"],
}
g:ale_enabled = 0

# location for viminfo file
set viminfofile=~/.vim/viminfo

# cmd aliases
command Buffers FuzzyBuffers
command Files FuzzyFiles
command Cmd FuzzyCommands
command Grep FuzzyGrep
command Search FuzzyInBuffer

# keys
map <Space> <Leader>
tmap <S-Insert> <C-W>"+
tmap <C-S-c> <C-\><C-n>
const mapleader = "\<Space>"

# tabs keys
nnoremap <C-t> :tabnew<CR>
nnoremap <C-c> :tabclose<CR>
nnoremap <C-n> :tabnext<CR>
nnoremap <C-p> :tabprevious<CR>

# spawn floating terminal
nnoremap <C-a> :tabnew<CR>:terminal ++curwin<CR>

# open terminal in current windows
nnoremap <C-g> :terminal ++curwin<CR>

# file manager
nnoremap <leader>fm :e .<CR>

# command pallet for chad
nnoremap <leader>c :FuzzyCommands<CR>

# move lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

# format buffer
nnoremap ta :ALEFix<CR>
nnoremap td :ALEToggle<CR>

# spawn fern.vim file manager
nnoremap tr :Fern . -drawer -width=25 -wait<CR>

# clear last search pattern
nnoremap <C-s> :let @/ = ""<CR>

# change mode from insert to normal
inoremap jk <ESC>

# asyncomplete.vim bindings
#inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
#inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
#inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
#imap <c-space> <Plug>(asyncomplete_force_refresh)
