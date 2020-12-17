	syntax on
	set nobackup
	set nu
	set nocompatible
	call plug#begin('~/.vim/plugged/')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	Plug 'sheerun/vim-polyglot'
	call plug#end()


	function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')

