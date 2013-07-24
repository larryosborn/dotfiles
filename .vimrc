set autoindent
set background=dark
set backspace=indent,eol,start
set binary noeol
set clipboard+=unnamed
set cursorline
set encoding=utf-8
set expandtab
set guioptions+=e
set guioptions-=T
set hidden
set history=50
set hlsearch
set incsearch
set laststatus=2
set nocompatible
set nonu
set nopaste
set novb
set nowrap
set ruler
set shiftwidth=4
set showcmd
set smarttab
set softtabstop=4
set tabstop=4
set viminfo='20,"50,s10,h
set writeany

syntax on
colo tango

filetype plugin on

highlight Error ctermbg=darkblue  ctermfg=white
highlight WhitespaceEOL ctermbg=lightgray guibg=lightgrey
highlight tabtabtab ctermbg=lightgray guibg=lightgrey

match WhitespaceEOL /\s+$/
match tabtabtab /\t/

autocmd Syntax * syn match Error /\s\+$/ | syn match Error /\(^\s*\)\@<= \+\ze\t\+/
autocmd BufNewFile  *.html 0r ~/.vim/skeleton/skeleton.html
autocmd BufNewFile  *.pl   0r ~/.vim/skeleton/skeleton.pl
autocmd BufNewFile  *.pm   0r ~/.vim/skeleton/skeleton.pm
autocmd BufNewFile  *.py   0r ~/.vim/skeleton/skeleton.py
autocmd BufWritePre * :%s/\s\+$//e

map Q gq
vmap <tab> >gv
vmap <s-tab> <gv
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

call pathogen#infect()
