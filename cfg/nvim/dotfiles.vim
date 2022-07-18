augroup dotfiles
    autocmd!
		autocmd BufRead,BufNewFile $_DOT/src/* set filetype=bash
		autocmd BufUnload $_DOT/src/* :w >> $_DOT/tmp/hooks
augroup END
