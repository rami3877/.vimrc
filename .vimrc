set nocompatible
syntax on
set encoding=utf-8
filetype plugin on
set noshowmode
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'zxqfl/tabnine-vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lokaltog/vim-powerline'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
call vundle#end()
filetype plugin indent on
let g:airline_theme='light'

