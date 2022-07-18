runtime options.vim

call plug#begin('~/.local/share/nvim/site/plugged')
	Plug 'justinmk/vim-sneak'
	Plug 'wakatime/vim-wakatime'
call plug#end()

if exists('g:vscode')
		runtime vsmappings.vim
else
		runtime mappings.vim
endif
