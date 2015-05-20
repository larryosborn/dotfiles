set autoindent
set background=dark
set backspace=indent,eol,start
set binary noeol
set cursorline
set encoding=utf-8
set expandtab
set guifont=Meslo\ LG\ S\ for\ Powerline:h12
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
let g:vim_json_syntax_conceal=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|\.log\|dist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ctrlspace#enabled = 1
"let g:airline_left_sep=''
"let g:airline_right_sep=''
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled = 1


filetype off

call vundle#begin()

Bundle 'gmarik/Vundle.vim'
Bundle 'wookiehangover/jshint.vim'
Bundle 'scrooloose/syntastic'
Bundle 'pangloss/vim-javascript'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-markdown.git'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'elzr/vim-json'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'tpope/vim-fugitive'
"Bundle 'chriskempson/base16-vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'baskerville/bubblegum'

"la base16colorspace=256  " Access colors present in 256 colorspace


Bundle 'altercation/vim-colors-solarized'
"Bundle 'reedes/vim-colors-pencil'
"Bundle 'Arkham/vim-tango.git'
"Bundle 'Lokaltog/vim-distinguished'

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
au BufNewFile,BufRead *.html set filetype=mustache
au BufWritePre * :%s/\s\+$//e

"color distinguished
"color tango
syntax on
set t_Co=256
set term=xterm-256color
set background=dark
"let g:solarized_termcolors=256
"
"colo bubblegum-256-light
colo bubblegum-256-dark
let g:airline_theme='bubblegum'
"color solarized

let hour = strftime("%H")
if hour < 7 && hour > 18
    colo bubblegum-256-light
else
    colo bubblegum-256-dark
endif