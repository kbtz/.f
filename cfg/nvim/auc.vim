aug remember
    au!
    au BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$")
			\	| exe "normal! g`\""
			\	| endif
aug END

aug gutter
    au!
		hi LineNr ctermfg=12
		au ModeChanged *:* exe 'hi LineNr ctermfg=' . 
			\ get({ 'n': 12, 'i': 4, 'v': 13, '': 5 }, mode(), 12)
aug END

