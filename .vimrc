set encoding=utf-8
autocmd! bufwritepost .vimrc source %

" https://github.com/tpope/vim-pathogen
" someone said: I've started using "vim-plug" plugin manager instead
filetype off

execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
syntax on

set clipboard=unnamed

" =============================================================================
" Key mappings
" =============================================================================
let mapleader = ","
imap jj <Esc>
" move around tabs
map <c-n> <esc>:tabnext<CR>
map <c-m> <esc>:tabprevious<CR>
" move around splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
" take off search highlights
noremap <Leader>h :nohl<CR>

" =============================================================================
" General options
" =============================================================================
set history=700
set undolevels=700

set nobackup
set nowritebackup
set noswapfile

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab
set relativenumber

set hlsearch
set incsearch
set ignorecase
set smartcase

set nowrap " do not automatically wrap on load. wrap|nowrap.
set lbr
set tw=79
set fo-=t  " do not auto wrap text WHEN TYPING (use gqq).

""set ai
""set si

map <Leader>x :%s/\s\+$//<CR> " remove trailing whitespace.

if has('gui_running')
    ""colorscheme peachpuff
    colorscheme molokai
    ""colorscheme sorcerer
    ""colorscheme bluechia
    ""colorscheme darkblue2
    ""colorscheme gotham
    ""colorscheme grape
else
    ""colorscheme torte
    ""colorscheme sorcerer
    colorscheme molokai
endif

" =============================================================================
" Plugin: powerline - a statusline plugin for vim (and other apps as well).
" Home: https://github.com/powerline/powerline
" Docs: https://powerline.readthedocs.io/en/latest/usage/other.html
" Install: If using pathogen just clone the repo to the '~/.vim/bundle' dir.
" Then add the lines below to the .vimrc
" =============================================================================
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim ""required
set laststatus=2

" =============================================================================
" Plugin: ctrip.vim
" Home: https://github.com/kien/ctrlp.vim.git
" Docs: :help ctrlp-commands and :help ctrlp-extensions
" Install: If using pathogen just clone the repo to the '~/.vim/bundle' dir.
" =============================================================================
let g:ctrlp_max_height = 30
set wildignore+=__init__.py
""set wildignore+=*.pyc
""set wildignore+=*_build/*
""set wildignore+=*/coverage/*

" =============================================================================
" Plugin: python-mode
" Home: https://github.com/python-mode/python-mode
" Docs: :help pymode
" Install: If using pathogen just clone the repo to the '~/.vim/bundle' dir.
" Then add the lines below to the .vimrc. In addition, check the homepage for
" any frequent problems if things aren't working as expected.
" =============================================================================
filetype plugin on
filetype indent on
let g:pymode_python = 'python3'
""let g:syntastic_auto_jump = 0
" A few things to check to ensure python-mode is working properly:
" - Look for the column divider at col 80
" - K on a method shows documentation.
" - Put trailing whitespace on the end of a line. It should highlight it.
" - Run PymodeLint
" - Now the real test. At the top of the file use an undeclared variable such
"   as x = x + 10. On save it should catch the error.

