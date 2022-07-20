augroup dotfiles
    autocmd!
		autocmd BufRead,BufNewFile $_DOT/src/* set filetype=bash
		"autocmd BufWritePost $_DOT/src/* :w >> $_DOT/tmp/hooks
augroup END
