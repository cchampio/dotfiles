" Avoid needing to close and reopen the vimrc file when making changes 
" to it. Changes will be effective in the current vimrc file as soon as
" that file is saved.
" e.g. imap jj to escape, then write the changes to .vimrc. No need to 
" close and reopen vim in order to start using jj
" It is the same as sourcing the file at the terminal and the changes will 
" happen.
" bufwritepost is the event which the command will fire on
" .vimrc is the pattern of the file that the command will be applied to. 
" source is the command that will be executed
" % is the parameter to the source command. % means the current buffer. (confirm this)
autocmd! bufwritepost .vimrc source %

syntax on
imap jj <Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase  " Ignore case when searching
set smartcase   " When searching try to be smart about cases 
set hlsearch    " Highlight search results
set incsearch   " Makes search act like search in modern browsers

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab       " Use spaces instead of tabs
set smarttab        " Be smart when using tabs ;)
set shiftwidth=4    " 1 tab == 4 spaces
set tabstop=4       " how many columns is a tab. 
set softtabstop=4   " how many columns is tab when you type Tab in insert mode
set shiftround      " what does this do???? I don't know but I am taking it anyway
set number          " show line numbers
set nowrap          " do not auto wrap long lines automatically
set fo-=t           " do not auto wrap text when typing

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The below lines are things I ran across that I want to consider
" later whether I will use them or not
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Linebreak on 500 characters
"set lbr
"set tw=500

"set ai "Auto indent
"set si "Smart indent
"set wrap "Wrap lines
