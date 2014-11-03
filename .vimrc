set autoindent
set background=dark
set backspace=indent,eol,start
set binary noeol
set cursorline
set encoding=utf-8
set expandtab
set guifont=Menlo\ 10
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
set rtp+=~/.vim/bundle/Vundle.vim
let coffee_lint_options='-f ~/.coffeelint.json'

filetype off

call vundle#begin()

Bundle 'gmarik/Vundle.vim'
Bundle 'wookiehangover/jshint.vim'
Bundle 'scrooloose/syntastic'
Bundle 'pangloss/vim-javascript'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-markdown.git'
Bundle 'Arkham/vim-tango.git'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'Lokaltog/vim-distinguished'

call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on


highlight Error ctermbg=darkblue  ctermfg=white
highlight WhitespaceEOL ctermbg=lightgray guibg=lightgrey
highlight tabtabtab ctermbg=lightgray guibg=lightgrey

match WhitespaceEOL /\s+$/
match tabtabtab /\t/

au Syntax * syn match Error /\s\+$/ | syn match Error /\(^\s*\)\@<= \+\ze\t\+/
au BufNewFile *.pm 0r ~/.vim/skeleton/skeleton.pm
au BufNewFile *.pl 0r ~/.vim/skeleton/skeleton.pl
au BufNewFile *.html 0r ~/.vim/skeleton/skeleton.html
au BufWritePre * :%s/\s\+$//e

syntax on
set t_Co=256
set term=xterm-256color
color distinguished
