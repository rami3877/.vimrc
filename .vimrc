set nocompatible
syntax on
set encoding=utf-8
filetype plugin indent on
set noshowmode
call plug#begin('~/.vim/plugg')
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'zxqfl/tabnine-vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline-themes'
Plug 'lokaltog/vim-powerline'
Plug 'prabirshrestha/vim-lsp'
call plug#end()
let g:airline_theme='light'
