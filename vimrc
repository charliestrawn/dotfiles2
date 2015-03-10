set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'

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

nmap <F8> :TagbarToggle<CR>
