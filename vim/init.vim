set encoding=utf-8
scriptencoding utf-8

" enable plugin/indent by file type
filetype plugin indent on

" ---------
"  Letters
" ---------
set fileencoding=utf-8
set fileformats=unix,dos,mac
set ambiwidth=double

" ---------
"  Status line
" ---------
set showcmd
set ruler

" ---------
"  Tab/Indent
" ---------
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set nosmartindent
set cindent
set shiftwidth=2

" ---------
"  Search
" ---------
set incsearch
set ignorecase
set smartcase
set hlsearch

" ---------
"  Cursor
" ---------
set number
nnoremap j gj
nnoremap k gk

" ---------
"  Parentheses
" ---------
set showmatch



" load existing .vimrc
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" vim-plug
call plug#begin()

Plug 'tomasr/molokai'

" fern
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fugitive
Plug 'tpope/vim-fugitive'


call plug#end()


""" Fern
" Show hidden files
let g:fern#default_hidden=1

" Show file true with <C-n>
nnoremap <C-n> :Fern . -drawer

" Set fern renderer to nerdfont
let g:fern#renderer = "nerdfont"

""" Coc
" Install default extensions
let g:coc_global_extensions = [
  \'coc-css',
  \'coc-html',
  \'coc-json',
  \'coc-pyright',
  \'coc-rust-analyzer',
  \'coc-pairs',
  \'coc-tsserver'
\]


" Recognize <CR> in coc
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

