set encoding=utf-8
""autocmd! bufwritepost .vimrc source %

filetype plugin on
filetype indent on

let g:pymode_python = 'python3'

" BEGIN vim-plug
" First install vim-plug using: 
"   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'powerline/powerline'
Plug 'scrooloose/nerdtree'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'flazz/vim-colorschemes'

" :PlugClean   // Remove unused plugins
" :PlugInstall // Install plugins
call plug#end()
" END vim-plug

filetype plugin indent on
syntax on

set clipboard=unnamed

let mapleader = ","
imap jj <Esc>
map <c-n> <esc>:tabnext<CR>
map <c-m> <esc>:tabprevious<CR>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
noremap <Leader>h :nohl<CR>

set history=1000
set undolevels=1000
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

map <Leader>x :%s/\s\+$//<CR> " remove trailing white space.

if has('gui_running')
    ""colorscheme peachpuff
    ""colorscheme molokai
    ""colorscheme sorcerer
    ""colorscheme bluechia
    colorscheme darkblue2
    ""colorscheme gotham
    ""colorscheme grape
else
    ""colorscheme torte
    ""colorscheme sorcerer
    colorscheme molokai
endif

" =============================================================================
" Plugin: powerline - a status line plugin for vim (and other apps as well).
" Home: https://github.com/powerline/powerline
" Docs: https://powerline.readthedocs.io/en/latest/usage/other.html
" Install: Install using your favorite plugin manager and then add the lines
" below to the .vimrc. Be sure to get the rtp correct as the path may be
" different depending on which plugin manager is used.
" =============================================================================
""set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim "required
set rtp+=~/.vim/plugged/powerline/powerline/bindings/vim "required
set laststatus=2

" =============================================================================
" Plugin: ctrip.vim
" Home: https://github.com/kien/ctrlp.vim.git
" Docs: :help ctrlp-commands and :help ctrlp-extensions
" Install: Simply use your favorite plugin manager and done. The vim lines
" below are optional but probably recommended.
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
" Install: Using your favorite plugin manager. Then add the lines below to the
" .vimrc. In addition, check the homepage for any frequent problems if things
" aren't working as expected.
" =============================================================================
filetype plugin on
filetype indent on
""hi ColorColumn ctermbg=8
""hi ColorColumn guibg=gray
let g:pymode_options_colorcolumn = 0 " Turn off the red line for column 80
""let g:pymode_python = 'python3' "defined above
""let g:syntastic_auto_jump = 0
" A few things to check to ensure python-mode is working properly:
" - Look for the column divider at col 80
" - K on a method shows documentation.
" - Put trailing white space on the end of a line. It should highlight it.
" - Run PymodeLint
" - At the top of the file use an undeclared variable such as x = x + 10. On
"   save it should catch the error.

