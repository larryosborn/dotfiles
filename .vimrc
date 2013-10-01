set autoindent
set background=dark
set backspace=indent,eol,start
set binary noeol
set clipboard+=unnamed
set cursorline
set encoding=utf-8
set expandtab
set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
set guioptions+=e
set guioptions-=T
set hidden
set history=50
set hlsearch
set incsearch
set laststatus=2
set nocompatible
set nonu
set novb
set nowrap
set ruler
set shiftwidth=4
set showcmd
set softtabstop=4
set tabstop=4
set writeany
set rtp+=~/.vim/bundle/vundle/

syntax on

filetype off

call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'henrik/vim-indexed-search'
Bundle 'wookiehangover/jshint.vim'
Bundle 'scrooloose/nerdtree.git'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-commentary.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-git.git'
Bundle 'pangloss/vim-javascript'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-markdown.git'
Bundle 'tpope/vim-repeat'
Bundle 'mhinz/vim-startify.git'
Bundle 'tpope/vim-surround.git'
Bundle 'Arkham/vim-tango.git'

highlight Error ctermbg=darkblue  ctermfg=white
highlight WhitespaceEOL ctermbg=lightgray guibg=lightgrey
match WhitespaceEOL /\s+$/

highlight tabtabtab ctermbg=lightgray guibg=lightgrey
match tabtabtab /\t/

au Syntax * syn match Error /\s\+$/ | syn match Error /\(^\s*\)\@<= \+\ze\t\+/
au BufNewFile *.pm 0r ~/.vim/skeleton/skeleton.pm
au BufNewFile *.pl 0r ~/.vim/skeleton/skeleton.pl
au BufNewFile *.html 0r ~/.vim/skeleton/skeleton.html

autocmd BufWritePre * :%s/\s\+$//e

colo tango

filetype plugin indent on
