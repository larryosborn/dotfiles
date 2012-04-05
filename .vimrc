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
set viminfo='20,"50,s10,h
set binary noeol
set writeany

syntax on
colo tango

highlight Error ctermbg=darkblue  ctermfg=white
highlight WhitespaceEOL ctermbg=lightgray guibg=lightgrey
match WhitespaceEOL /\s+$/
highlight tabtabtab ctermbg=lightgray guibg=lightgrey
match tabtabtab /\t/
au Syntax * syn match Error /\s\+$/ | syn match Error /\(^\s*\)\@<= \+\ze\t\+/

autocmd BufNewFile  *.html 0r ~/.vim/skeleton/skeleton.html
autocmd BufNewFile  *.pl   0r ~/.vim/skeleton/skeleton.pl
autocmd BufNewFile  *.pm   0r ~/.vim/skeleton/skeleton.pm
autocmd BufNewFile  *.py   0r ~/.vim/skeleton/skeleton.py
