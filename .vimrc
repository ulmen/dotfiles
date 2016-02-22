set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
"
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails.git'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'ack.vim'
Plugin 'bufexplorer.zip'
Plugin 'vim-coffee-script'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'ctrlp.vim'
Plugin 'snipMate'
Plugin 'Lokaltog/vim-powerline'
Plugin 'kucaahbe/vim-common-tips'
Plugin 'airblade/vim-gitgutter'
Plugin 'Puppet-Syntax-Highlighting'
Plugin 'slim-template/vim-slim'
Plugin 'Jinja'
Plugin 'saltstack/salt-vim'
Plugin 'sickill/vim-monokai'
Plugin 'chriskempson/vim-tomorrow-theme'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"colorscheme monokai
"colorscheme Tomorrow-Night-Bright

" Indents
set autoindent
set smartindent
set shiftwidth=2
set expandtab

" remove whitespaces unneeded
autocmd BufWritePre * :%s/\s\+$//e

" commandline
set wildmenu " zsh style autocompele
set showcmd " show uncompleted command in statusbar

set number

set cursorline

" rvm fix
set shell=/bin/sh

if has("gui_running")
  "https://gist.github.com/baopham/1838072
  set guifont=Monaco\ for\ Powerline:h14
  set guioptions=egmrt
endif

" NERDCommenter bindings
map " <plug>NERDCommenterToggle
vmap " <plug>NERDCommenterToggle

" open NERDTree on vim start
" autocmd vimenter * NERDTree
"  closes vim if the only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NERDTree bindings
" map <F9> :NERDTreeToggle<CR>
" imap <F9> <Esc>:NERDTreeToggle<CR>

" Ack search - Command+Shift+F
map <D-F> :Ack<space>

" Powerline
let g:Powerline_symbols = 'fancy'

" jinja syntax on
autocmd BufNewFile,BufRead *.j2   set syntax=jinja

