"******************************
" Auto commands 
"******************************
autocmd! bufwritepost .vimrc source %   " automatically source the vimrc when it is saved. 
syntax on

"******************************
" key mappings
"******************************
imap jj <Esc> 

"******************************
" Searching
"******************************
set ignorecase  " Ignore case when searching
set smartcase   " When searching try to be smart about cases 
set hlsearch    " Highlight search results
set incsearch   " Makes search act like search in modern browsers

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
set expandtab       " Use spaces instead of tabs
set smarttab        " Be smart when using tabs ;)
set shiftwidth=4    " 1 tab == 4 spaces
set tabstop=4       " how many columns is a tab. 
set softtabstop=4   " how many columns is tab when you type Tab in insert mode
set shiftround      " what does this do???? I don't know but I am taking it anyway
set number          " show line numbers
set nowrap          " do not auto wrap long lines automatically
set fo-=t           " do not auto wrap text when typing

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
