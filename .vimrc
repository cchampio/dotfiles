set encoding=utf-8
autocmd! bufwritepost .vimrc source %
" https://github.com/tpope/vim-pathogen
" someone said: I've started using "vim-plug" plugin manager instead
execute pathogen#infect()
execute pathogen#helptags()

filetype off
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
" take of search highlights
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

" Highlight undesired trailing whitespace so we can
" remove it. MUST be inserted BEFORE the colorscheme command.
" https://stackoverflow.com/questions/11087041/gvim-to-custom-highlight-group-in-vimrc-not-working
"" highlight ExtraWhitespace ctermbg=red guibg=red
"" au InsertLeave * match ExtraWhitespace /\s\+$/
"" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
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
" Usage: https://powerline.readthedocs.io/en/latest/usage/other.html
" Install: If using pathogen just clone the repo to the ~/.vim/bundle dir. and
" then add the lines below to the .vimrc
" =============================================================================
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim ""required
set laststatus=2

" =============================================================================
" Plugin: ctrip.vim
" Home: https://github.com/kien/ctrlp.vim.git
" Usage: See homepage.
" Install: If using pathogen just clone the repo to the ~/.vim/bundle dir.
" =============================================================================
let g:ctrlp_max_height = 30
set wildignore+=__init__.py
""set wildignore+=*.pyc
""set wildignore+=*_build/*
""set wildignore+=*/coverage/*
