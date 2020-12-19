set nocompatible
syntax on
set encoding=utf-8
filetype plugin on
set noshowmode
set hlsearch
set incsearch
set nu
call plug#begin('~/.vim/plugg')
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'zxqfl/tabnine-vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline-themes'
Plug 'lokaltog/vim-powerline'
call plug#end()
let g:airline_theme='light'
nmap <c-z> <esc> 
imap <c-z> <esc>
vmap <c-z> <esc>
omap <c-z> <esci>
