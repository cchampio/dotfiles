set encoding=utf-8
autocmd! bufwritepost .vimrc source %
" https://github.com/tpope/vim-pathogen
" I've started using "vim-plug" plugin manager instead
execute pathogen#infect()

filetype off
filetype plugin indent on
syntax on

" ==================================================
" Key mappings
" ==================================================
let mapleader = ","
imap jj <Esc>
map <c-n> gt
map <c-m> gT
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
noremap <Leader>h :nohl<CR>

" ==================================================
" General options
" ==================================================
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
map <Leader>x :%s/\s\+$//<CR>

colorscheme torte

" ==================================================
" Python setup
" ==================================================

