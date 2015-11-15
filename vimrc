set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'

Plugin 'flazz/vim-colorschemes'
Plugin 'smyck'

call vundle#end()

filetype plugin indent on

imap jj <Esc>
let mapleader = ","
set pastetoggle=<F10>

set backup
set backupdir=$HOME/tmp/vim/backup//
set undofile
set undodir=$HOME/tmp/vim/undo//
set directory=$HOME/tmp/vim/swap//

set ruler
set showcmd

set tabstop=4

" Tagbar
nmap <leader>t :TagbarToggle<CR>

" NERD Tree
map <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeWinSize = 22
let NERDTreeMinimalUI = 1

colorscheme smyck

" Window splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
