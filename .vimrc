"******************************
" Auto commands
"******************************
" automatically source the vimrc when it is saved.
autocmd! bufwritepost .vimrc source %
syntax on

"******************************
" key mappings
"******************************
imap jj <Esc>

"******************************
" Searching
"******************************

" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch

"******************************
" Turn off swap files, backup files, etc.
" They just get in the way of apps like git anyway...
"******************************
set nobackup
set nowritebackup
set noswapfile

"******************************
" Editor Options
"******************************
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
" how many columns is a tab.
set tabstop=4
" how many columns is tab when you type Tab in insert mode
set softtabstop=4
" what does this do???? I don't know but I am taking it anyway
set shiftround
" show line numbers
"set number
" show relative line numbers
set relativenumber
" do not auto wrap long lines automatically
set nowrap
" do not auto wrap text when typing
set fo-=t
" auto-indent code. Turns on file-type detection so that vim
" will figure out what the file is as  it is loaded. 
" Enables automatic indenting.
filetype indent on

"******************************
" Plugins
"******************************
" pathogen is a plugin manager
" https://github.com/tpope/vim-pathogen
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
"filetype off
"execute pathogen#infect()
"execute pathogen#helptags()
"filetype plugin indent on
"
"******************************
" The lines below are things I ran across that I want to consider
" later.
"******************************

" Linebreak on 500 characters
"set lbr
"set tw=500
"set ai "Auto indent
"set si "Smart indent
"set wrap "Wrap lines
