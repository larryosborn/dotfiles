set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set binary noeol
set clipboard=unnamed
set encoding=utf-8 nobomb
set expandtab
set ffs=unix,dos,mac
set guifont=Menlo\ Regular:h12
set guioptions+=e
set guioptions-=T
set hidden
"set nohidden
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
"set termguicolors
set tabstop=4
set writeany


let g:ag_working_path_mode = 'r'
let g:ale_completion_enabled = 0
let g:ale_fixers = { 'javascript': ['eslint'], 'html': ['eslint'] }
let g:ale_javascript_standard_options = '--plugin html'
let g:ale_linter_aliases = {'html': ['javascript']}
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '➜'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|\.log\|dist'
let g:vim_json_syntax_conceal = 0

let g:bufferline_active_buffer_left = ''
let g:bufferline_active_buffer_right = ''

let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ], [ 'bufferline' ] ],
  \ },
  \ 'component': {
  \   'bufferline': '%{bufferline#refresh_status()}%{g:bufferline_status_info.before}%#TabLineSel#%{g:bufferline_status_info.current}%#LightLineLeft_active_3#%{g:bufferline_status_info.after}'
  \ }
  \ }



filetype off
call plug#begin()

Plug 'ajh17/Spacegray.vim'
"Plug 'jacoborus/tender.vim'
"
Plug 'bling/vim-bufferline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'roxma/vim-paste-easy'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
call plug#end()

filetype plugin on

autocmd FileType scss set iskeyword+=- " Fix for scss: https://github.com/cakebaker/scss-syntax.vim#function-names-starting-with-a-keyword
autocmd BufNewFile,BufRead *.ract set filetype=html
autocmd BufNewFile,BufRead *.svelte set filetype=html
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufEnter,InsertLeave * :syntax sync fromstart

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

syntax on
colorscheme spacegray

"highlight Comment cterm=italic
"highlight Error ctermbg=darkred  ctermfg=white cterm=NONE
"highlight MatchParen cterm=none ctermbg=none ctermfg=magenta
"highlight Noise ctermfg=white
"highlight Normal guifg=#eeeeee ctermfg=255 guibg=#000000 ctermbg=0 gui=NONE cterm=NONE
"highlight Visual guifg=NONE ctermfg=NONE guibg=#282828 ctermbg=235 gui=NONE cterm=NONE
