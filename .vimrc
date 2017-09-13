set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set binary noeol
set clipboard=unnamed
set encoding=utf-8 nobomb
set expandtab
set ffs=unix,dos,mac
set guifont=Meslo\ LG\ S\ for\ Powerline:h12
set guioptions+=e
set guioptions-=T
set hidden
set history=1000
set hlsearch
set incsearch
set laststatus=2
set lazyredraw
set magic
set mouse=a
set nobackup
set nocompatible
set nonu
set noswapfile
set novb
set nowb
set nowrap
set rtp+=~/.vim/bundle/Vundle.vim
set ruler
set shiftwidth=4
set showcmd
set smarttab
set so=7
set softtabstop=4
set tabstop=4
set term=xterm-256color
set writeany

let g:ale_linter_aliases = {'html': ['javascript']}
let g:ale_javascript_standard_options = "--plugin html"
let coffee_lint_options='-f ~/.coffeelint.json'
let g:vim_json_syntax_conceal=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|\.log\|dist'
let g:ag_working_path_mode="r"

"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_loc_list_height = 5
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_html_checkers=['eslint']
"let g:syntastic_html_checkers = ['eslint']
"let g:syntastic_mustache_checkers = ['tidy', 'eslint']
"let g:syntastic_aggregate_errors = 1
"let g:syntastic_html_tidy_ignore_errors=["is not recognized!", "discarding unexpected", "plain text isn't allowed in"]

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 0
let g:airline#extensions#whitespace#max_lines = 20000
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme='bubblegum'
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
Bundle 'ajh17/Spacegray.vim'
Bundle 'ap/vim-css-color'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'kien/ctrlp.vim'
Bundle 'moll/vim-node'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'pangloss/vim-javascript'
Bundle 'roxma/vim-paste-easy'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'w0rp/ale'

call vundle#end()
filetype plugin on

" Fix for scss
" https://github.com/cakebaker/scss-syntax.vim#function-names-starting-with-a-keyword
autocmd FileType scss set iskeyword+=-

autocmd BufNewFile,BufRead *.ract set filetype=html
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufEnter,InsertLeave * :syntax sync fromstart

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

syntax on

colorscheme spacegray

highlight Error ctermbg=darkred  ctermfg=white cterm=NONE
highlight Noise ctermfg=white
highlight MatchParen cterm=none ctermbg=none ctermfg=magenta
