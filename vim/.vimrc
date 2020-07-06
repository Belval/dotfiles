set history=600

set number
set relativenumber

" Ignore case when searching
set ignorecase

" Magic for RegEx
set magic

" What else?
set encoding=utf8

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Set autoindent
set ai
filetype indent on

" Set syntax (color)
syntax on

" Set system clipboard a register for yanking
set clipboard=unnamedplus

" Show matching
set showmatch

" Set autoread to auto reload from disk
set autoread

" Auto remove trailing whitespaces
autocmd BufWritePre * %s/\s\+$//e

" Tell vim we are using dark theme
set background=dark
