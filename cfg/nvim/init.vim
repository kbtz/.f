runtime options.vim

call plug#begin('~/.local/share/nvim/site/plugged')
	Plug 'justinmk/vim-sneak'
	if !exists('g:vscode')
		Plug 'wakatime/vim-wakatime'
		Plug 'Raku/vim-raku'
	endif
call plug#end()

if exists('g:vscode')
	runtime vsmappings.vim
	finish
endif

let g:python3_host_prog = "/usr/bin/python3"

runtime mappings.vim
runtime dotfiles.vim

