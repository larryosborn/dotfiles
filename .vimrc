set hidden
set nocompatible
set nowrap
set expandtab
set ruler
set showcmd
set hlsearch
set novb
set autoindent
set backspace=indent,eol,start
set clipboard+=unnamed
set softtabstop=4
set tabstop=4
set shiftwidth=4
set encoding=utf-8

syntax on
colo tango

autocmd BufNewFile  *.html 0r ~/.vim/skeleton/skeleton.html
autocmd BufNewFile  *.pl   0r ~/.vim/skeleton/skeleton.pl
autocmd BufNewFile  *.pm   0r ~/.vim/skeleton/skeleton.pm
autocmd BufNewFile  *.py   0r ~/.vim/skeleton/skeleton.py
