augroup filetypes
    autocmd!
		autocmd BufRead,BufNewFile *.glsl set filetype=c
		autocmd BufRead,BufNewFile ~f/src/* set filetype=bash
augroup END
