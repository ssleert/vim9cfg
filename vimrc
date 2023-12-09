vim9script

# if 1 most of animations and other shit is disabled
const performance_mode = 1

# enable all gvim dialogs
const gvim_dialogs = 0

# codedark | gruvbox | default | retrobox | else
const main_theme = "default"
const background = "light" # light | dark

# prevent by loading default plugins
#const g:loaded_rrhelper = 1
#const g:loaded_gzip = 1
#const g:loaded_getscriptPlugin = 1
#const g:loaded_vimballPlugin = 1
#const g:loaded_zipPlugin = 1
#const g:loaded_manpager = 1
#const g:loaded_spellfile = 1
#const g:loaded_tohtml = 1
#const g:loaded_2html_plugin = 1
#const g:loaded_fzf = 1
##const g:loaded_matchparen: bool = 1
#const g:loaded_logiPat = 1
#const g:loaded_tarPlugin = 1
#const g:netrw_use_noswf = 0

# disable loading of line plugins
#const g:loaded_airline = 1

# disable netrw
const g:loaded_netrwPlugin = 1
const g:netrw_silent = 0

if performance_mode == 1
  const g:loaded_lightline = 1
endif

# plugins
plugpac#Begin({
  status_open: "vertical",
  verbose: 2,
})

  Pack "k-takata/minpac", {"type": "opt"}

  if main_theme != "default" && main_theme != "retrobox"
    if performance_mode != 1
      Pack "vim-airline/vim-airline"
      Pack "vim-airline/vim-airline-themes"
    else
      Pack "itchyny/lightline.vim" # not loaded. themes base for qline
      Pack "Bakudankun/qline.vim"
    endif
  endif
  #Pack "jiangmiao/auto-pairs"
  Pack "Eliot00/auto-pairs" # vim9script auto-pairs alternate
  Pack "mhinz/vim-startify"
  #Pack "Angluca/acp" # vim9script AutoComplPop alternative

  if performance_mode != 1
    Pack "vim-scripts/AutoComplPop" # more functional than Angluca/acp
  endif
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

  if main_theme == "codedark"
    Pack "tomasiser/vim-code-dark"
  endif

  Pack "gruvbox-community/gruvbox"
  #Pack "junegunn/fzf.vim"
  #Pack "junegunn/fzf"
  if performance_mode != 1
    Pack "ryanoasis/vim-devicons"
  endif
  Pack "Donaldttt/fuzzyy"
  Pack "habamax/vim-dir"
  Pack "habamax/vim-polar"
  Pack "lambdalisue/fern.vim"
  if performance_mode != 1
    Pack "lambdalisue/nerdfont.vim"
    Pack "lambdalisue/fern-renderer-nerdfont.vim"
  endif
  Pack "lambdalisue/glyph-palette.vim"
  Pack "lambdalisue/fern-git-status.vim"
  #Pack "preservim/nerdtree"
  Pack "sheerun/vim-polyglot"
  Pack "luochen1990/rainbow" # vscode like brackets rainbow

  if performance_mode != 1
    Pack "Yggdroot/indentLine" # indent guides
  endif
  #Pack "preservim/vim-indent-guides" # Indent guides but better
  if performance_mode != 1
    #Pack "joeytwiddle/sexy_scroller.vim"
    #Pack "opalmay/vim-smoothie"
  endif
  Pack "ap/vim-css-color"
  Pack "dense-analysis/ale"
  Pack "tpope/vim-sensible"

  # zoom for gvim
  Pack "ssleert/gtk3-vim-zoom"

  # tetris)
  Pack "vim-scripts/TeTrIs.vim"

  # my favorite vim wiki
  Pack "vimwiki/vimwiki"

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

# gruvbox config
const g:gruvbox_italic = 1
const g:gruvbox_italicize_strings = 1
const g:gruvbox_contrast_dark = "soft"

# no fucking bell
set noerrorbells
set novisualbell

# undo history after file close
set undodir=~/.vim
set undofile

# ru language support
set keymap=russian-jcukenwin
set imsearch=0
set iminsert=0

# theme and font
syntax on
set termguicolors # truecolor support

if background == "light"
  set background=light
elseif background == "dark"
  set background=dark
endif

if main_theme == "codedark"
  colorscheme codedark
elseif main_theme == "gruvbox"
  colorscheme gruvbox
elseif main_theme == "default"
  colorscheme polar
elseif main_theme == "retrobox"
  colorscheme retrobox
else
  colorscheme default
endif

g:smoothie_update_interval = 2
g:SexyScroller_CursorTime = 10

# qline colorscheme

g:qline_config = {}
if main_theme == "codedark"
  g:qline_config = {
    colorscheme: "lightline:codedark"
  }
elseif main_theme == "gruvbox"
  g:qline_config = {
    colorscheme: "lightline:gruvbox"
  }
else
  g:qline_config = {
    colorscheme: "lightline:gruvbox"
  }
endif

# lightline colorscheme
g:lightline = {}
if main_theme == "codedark"
  g:lightline = {
    colorscheme: "codedark"
  }
elseif main_theme == "gruvbox"
  g:lightline = {
    colorscheme: "gruvbox"
  }
else
  g:lightline = {
    colorscheme: "gruvbox"
  }
endif

# airline colorscheme
if main_theme == "codedark"
  g:airline_theme = 'codedark'
elseif main_theme == "gruvbox"
  g:airline_theme = 'gruvbox'
else
  g:airline_theme = 'base16'
endif
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
if gvim_dialogs != 1
  set guioptions=aAkpc
else
  set guioptions+=aAkp
endif
set encoding=utf-8
set enc=utf-8
set t_Co=256
set t_ut=

#g:guifont_var = "CaskaydiaCove\ Nerd\ Font\ Mono\ 16"
#g:guifont_var = "SauceCodePro\ Nerd\ Font\ Mono\ 14"
g:guifont_var = "MesloLGSDZ\ Nerd\ Font\ Mono\ 11" # font for gui
exe "set guifont=" .. escape(g:guifont_var, ' \|,')

# split character
set fillchars=vert:│

# hide tildes
if main_theme == "codedark"
  highlight EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#1f1f1f guifg=#1f1f1f
endif

# set theme bg for gui terminal
if main_theme == "codedark"
  highlight Terminal ctermbg=NONE ctermfg=NONE guibg=#111111 guifg=#d4d4d4
elseif main_theme == "gruvbox"
  highlight Terminal ctermbg=NONE ctermfg=NONE guibg=#222222 guifg=#d4d4d4
elseif main_theme == "retrobox"
  highlight Terminal ctermbg=NONE ctermfg=NONE guibg=#121212 guifg=#d4d4d4
#else
#  highlight Terminal ctermbg=NONE ctermfg=NONE guibg=#111111 guifg=#d4d4d4
endif

if main_theme == "codedark"
  g:terminal_ansi_colors = [
    '#000000', '#cd3131', '#0dbc79',
    '#e5e510', '#2472c8', '#bc3fbc',
    '#11a8cd', '#e5e5e5',

    '#666666', '#f14c4c', '#23d18b',
    '#f5f543', '#3b8eea', '#d670d6',
    '#29b8db', '#e5e5e5',
  ]
endif

hi NonText guifg=bg
hi EndOfBuffer guifg=bg

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
if performance_mode != 1
  set number
endif
set numberwidth=5

if main_theme == "default" || main_theme == "retrobox" || main_theme == "gruvbox"
  set foldcolumn=1
  hi FoldColumn guibg=bg
endif

if performance_mode != 1
  set relativenumber
  set numberwidth=2
endif


# cursor
if performance_mode != 1
  set cursorline
  set cursorcolumn
endif

# dont show current mode
if main_theme != "default" && main_theme != "retrobox"
  set noshowmode
endif

# active status lines (for lightline)
set laststatus=2
#if main_theme != "default" && main_theme != "retrobox"
#  set laststatus=2
#endif
#
#if main_theme == "default" || main_theme == "retrobox"
#  set laststatus=1
#endif

#if performance_mode != 1
#  set showtabline=2
#endif
set showtabline=2

# hide command line
#set cmdheight=0

# indent
set shiftwidth=8
set tabstop=8
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
set completeopt=menu,preview
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
autocmd FileType fern setlocal norelativenumber | setlocal nonumber #\| set foldcolumn=2
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

if main_theme != "gruvbox" && main_theme != "default" && main_theme != "retrobox"
  const g:rainbow_conf = {
    'guifgs': ['lightmagenta', 'yellow', 'lightblue', 'lightcyan'],
    'ctermfgs': ['lightmagenta', 'yellow', 'lightblue', 'lightcyan']
  }
endif

# invlist
set invlist
set listchars=tab:▏\ \ 

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
nnoremap <leader>tn :tabnew<CR>:terminal ++curwin<CR>

# open terminal in current windows
nnoremap <C-g> :terminal ++curwin<CR>

# binds for font size change for GVIM
# work only on gtk3 version of gvim
nmap <leader>ds :exe "set guifont=" .. escape(g:guifont_var, ' \|,')<CR>
nnoremap <silent> <C-UP> :LargerFont<CR>
nnoremap <silent> <C-DOWN> :SmallerFont<CR>

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
inoremap asd <ESC>

# change keyboard layout
inoremap <C-s> <C-^>

# asyncomplete.vim bindings
#inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
#inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
#inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
#imap <c-space> <Plug>(asyncomplete_force_refresh)
