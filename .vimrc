set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
Bundle 'ack.vim'
Bundle 'bufexplorer.zip'
Bundle 'vim-coffee-script'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'ctrlp.vim'
Bundle 'SuperTab-continued.'
Bundle 'snipMate'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kucaahbe/vim-common-tips'
Bundle 'kchmck/vim-coffee-script'
Bundle 'airblade/vim-gitgutter'
Bundle 'Puppet-Syntax-Highlighting'
Bundle 'slim-template/vim-slim'
Bundle 'Jinja'

Bundle 'wakatime/vim-wakatime'

Bundle 'sickill/vim-monokai'
Bundle 'chriskempson/vim-tomorrow-theme'

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
colorscheme Tomorrow-Night-Bright

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
autocmd vimenter * NERDTree
"  closes vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NERDTree bindings
map <F9> :NERDTreeToggle<CR>
imap <F9> <Esc>:NERDTreeToggle<CR>

" Ack search - Command+Shift+F
map <D-F> :Ack<space>

" Powerline
let g:Powerline_symbols = 'fancy'

" jinja syntax on
autocmd BufNewFile,BufRead *.j2   set syntax=jinja

