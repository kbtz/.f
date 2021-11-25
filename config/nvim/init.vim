runtime options.vim
runtime colors.vim

call plug#begin('~/.local/share/nvim/site/plugged')
	Plug '/home/code/vjs'
	Plug '/home/code/vc'
	Plug 'justinmk/vim-sneak'
	Plug 'wakatime/vim-wakatime'
call plug#end()

let g:emmet_install_only_plug = 1

runtime mappings.vim
runtime javascript.vim
