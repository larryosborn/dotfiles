set autoindent
set background=dark
set backspace=indent,eol,start
set binary noeol
set cursorline
set encoding=utf-8 nobomb
set expandtab
set smarttab
set guifont=Meslo\ LG\ S\ for\ Powerline:h12
set guioptions+=e
set guioptions-=T
set hidden
set history=1000
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
set lazyredraw
set autoread
set ffs=unix,dos,mac
set rtp+=~/.vim/bundle/Vundle.vim
set magic
set so=7

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Fix for scss
" https://github.com/cakebaker/scss-syntax.vim#function-names-starting-with-a-keyword
autocmd FileType scss set iskeyword+=-

let coffee_lint_options='-f ~/.coffeelint.json'
let g:vim_json_syntax_conceal=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|\.log\|dist'
let g:syntastic_javascript_checkers = ['eslint']

let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 0
let g:airline#extensions#whitespace#max_lines = 20000
let g:airline_section_x = ''
let g:airline_section_y = ''

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'v'  : 'V',
  \ 'V'  : 'V-L',
  \ 'c'  : 'C',
  \ 's'  : 'S',
  \ 'S'  : 'S-L',
  \ }


filetype off

call vundle#begin()

Bundle 'gmarik/Vundle.vim'
"Bundle 'sheerun/vim-polyglot'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'baskerville/bubblegum'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'tpope/vim-unimpaired'
Plugin 'jacoborus/tender.vim'
Plugin 'yggdroot/indentline'
"Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ap/vim-css-color'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'


"Bundle 'wookiehangover/jshint.vim'
Bundle 'pangloss/vim-javascript'
"Bundle 'othree/yajs.vim'
"Bundle 'groenewege/vim-less'
"Bundle 'tpope/vim-markdown.git'
Bundle 'kchmck/vim-coffee-script'
Bundle 'elzr/vim-json'
"Bundle 'tpope/vim-fugitive'
Bundle 'Valloric/YouCompleteMe'
Bundle 'ajh17/Spacegray.vim'
Plugin 'moll/vim-node'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

highlight Error ctermbg=darkblue  ctermfg=white
"highlight WhitespaceEOL ctermbg=lightgray guibg=lightgrey
highlight tabtabtab ctermbg=lightgray guibg=lightgrey

"match WhitespaceEOL /\s+$/
match tabtabtab /\t/

au Syntax * syn match Error /\s\+$/ | syn match Error /\(^\s*\)\@<= \+\ze\t\+/
au BufNewFile *.pm 0r ~/.vim/skeleton/skeleton.pm
au BufNewFile *.pl 0r ~/.vim/skeleton/skeleton.pl
au BufNewFile *.html 0r ~/.vim/skeleton/skeleton.html
"au BufNewFile,BufRead *.html set filetype=mustache
"au BufNewFile,BufRead *.ract set filetype=mustache
au BufNewFile,BufRead *.ract set filetype=html
au BufWritePre * :%s/\s\+$//e

au BufEnter,InsertLeave * :syntax sync fromstart

" Delete trailing white space on save
"
"func! DeleteTrailingWS()
"  exe "normal mz"
"  %s/\s\+$//ge
"  exe "normal `z"
"endfunc
"autocmd BufWrite * :call DeleteTrailingWS()

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

syntax on
"set termguicolors
"set t_Co=256
set term=xterm-256color
"set background=dark
let g:airline_theme='bubblegum'
"colo bubblegum-256-dark
"colo bubblegum-256-light
colorscheme spacegray

" If you have vim >=8.0 or Neovim >= 0.1.5
colorscheme tender
let g:airline_theme = 'tender'
let g:indentLine_color_term = 239
let g:indentLine_char = '·'

"Map ctrl+n to NERDTree
map <C-n> :NERDTreeToggle<CR>
"Close vim if NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Close NERDTree after opening a file
let NERDTreeQuitOnOpen=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_checkers=['eslint']
"let g:syntastic_html_checkers = ['tidy', 'eslint'] " Ignore tidy for now since it can't handle mustaches
let g:syntastic_html_checkers = ['eslint']
let g:syntastic_mustache_checkers = ['tidy', 'eslint']
let g:syntastic_aggregate_errors = 1
let g:syntastic_html_tidy_ignore_errors=["is not recognized!", "discarding unexpected", "plain text isn't allowed in"]
"let g:syntastic_debug=3

"let g:syntastic_error_symbol = '❌'
"let g:syntastic_style_error_symbol = '⁉️'
"let g:syntastic_warning_symbol = '⚠️'
"let g:syntastic_style_warning_symbol = '💩'

"highlight link SyntasticErrorSign SignColumn
"highlight link SyntasticWarningSign SignColumn
"highlight link SyntasticStyleErrorSign SignColumn
"highlight link SyntasticStyleWarningSign SignColumn