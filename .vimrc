" I may over document this file right now because I am still learning vim --CWC

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

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
"set lbr
"set tw=500

"set ai "Auto indent
"set si "Smart indent
"set wrap "Wrap lines
