call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug 'ervandew/supertab'
Plug 'atelierbram/vim-colors_atelier-schemes'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', { 'do': 'sudo ./install.py --clang-completer' }
Plug 'majutsushi/tagbar'
Plug 'szw/vim-tags'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/a.vim'
Plug 'sheerun/vim-polyglot'
call plug#end()
"setting vim 
set nocompatible
set wildmenu "to enable menu :https://i.stack.imgur.com/hUXZv.png
set laststatus=2 "show the bar in down
"Function to toggle the mouse [Key = leader + m]
 function! ToggleMouse()
     "check if mouse is enabled
     if &mouse == 'a'
         " disable mouse
         set mouse=
     else
         " enable mouse everywhere
         set mouse=a
     endif
 endfunc
syntax enable
set encoding=utf-8
filetype plugin indent on
set nu "show number to left
set bs=2
" if you have a 256 color terminal if not use highlight ColorColumn ctermbg = 16
highlight ColorColumn ctermbg=238
"set hidden "https://medium.com/usevim/vim-101-set-hidden-f78800142855
set hlsearch "it will enable the highlighting search matches ;for disable :nohlsearch
set incsearch "https://miro.medium.com/max/626/1*jP9h3BO_2uOHGe3N4lBkZA.gif
set noswapfile
set nowrapscan
set showmatch "enable MatchParen
"                       Color shading  Color pointer
hi MatchParen cterm=none ctermbg=black ctermfg=blue
set tabstop=4 shiftwidth=4 expandtab
"histories
set undodir=~/.vim/undo " where to save undo histories
set undofile                " Save undos after file closes
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
set updatetime=1

"folding settings "https://www.youtube.com/watch?v=pnc9_d1k5-4 and https://vim.fandom.com/wiki/Folding
set foldmethod=manual
"set foldlevel=1
autocmd BufWinLeave *.* mkview "to save folding 
autocmd BufWinEnter *.* silent loadview "to load folding from file ~/.vim/view

"setting SuperTab 

"make YCM compatible with UltiSnips (using supertab)
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>' "show what you have Options When you do not write something
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"   
let g:UltiSnipsEditSplit="vertical"

"tagbar setting https://vimawesome.com/plugin/tagbar
nmap <F8> :TagbarToggle<CR>
nmap <F7> :TagbarOpenAutoClose<CR> 
"vim-gitgutter setting
nmap [j <Plug>(GitGutterNextHunk)
nmap [k <Plug>(GitGutterPrevHunk)
"gutentags
let g:gutentags_modules = ['ctags']
let g:gutentags_ctags_extra_args = ['--fields=+l --extra=+f --langdef=file --c-kinds=+lx']
let g:gutentags_project_root = ['.project']
let g:ctrlp_root_markers = ['.project']
"aline 
let g:ycm_show_diagnostics_ui = 0
 
let g:airline_powerline_fonts = 12
 
 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
 endif
 
 " unicode symbols
 let g:airline_left_sep = '»'
 let g:airline_left_sep = '▶'
 let g:airline_right_sep = '«'
 let g:airline_right_sep = '◀'
 let g:airline_symbols.linenr = '␊'
 let g:airline_symbols.linenr = '␤'
 let g:airline_symbols.linenr = '¶'
 let g:airline_symbols.branch = '⎇'
 let g:airline_symbols.paste = 'ρ'
 let g:airline_symbols.paste = 'Þ'
 let g:airline_symbols.paste = '∥'
 let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#tabline#enabled = 1


"change key esc to `
nmap ` <esc> 
imap ` <esc>
vmap ` <esc>
omap ` <esci>

