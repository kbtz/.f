let g:vs = exists('g:vscode')
let g:plugged_path = '~/.local/share/nvim/site/plugged'
let g:python3_host_prog = '/usr/bin/python3'

command! -nargs=0 PB call plug#begin(g:plugged_path)
command! -nargs=0 PE call plug#end()

command! -nargs=+ R call s:run(<f-args>)
command! -nargs=1 EXE exe <args>
	"\ <bar> echo <args> 

command! -nargs=+ MAP call
	\	s:exef(
		\	"command! -nargs=\+ %s call s:nrmap('%s', '%s', <"."f-args>)",
		\ s:adef(3, "''", <f-args>))

command! -nargs=+ VS call
	\ s:exef("call VSCodeNotify('%s.action.%s')" , [<f-args>])

command! -nargs=+ VSA call
	\ s:exef("call VSCodeNotify('%s')" , [<f-args>])

fu! s:run(...)
	for name in a:000
		EXE 'runtime ' . name . '.vim'
	endfo
endf 

fu! s:exef(format, arr)
	EXE call('printf', [a:format] + a:arr)
endf

fu! s:nrmap(mode, layer, key, cmd, vsa = 'same', vsns = 'workbench')
	let l:binding = a:mode.'noremap ' . a:layer.a:key
	
	if a:cmd != 'none' && (!g:vs || a:vsa == 'same')
		EXE join([l:binding, a:cmd])
	en
	
	if g:vs && a:vsa !~ '\v^(same|none)$'
		if a:vsa =~ '\v^(macro)\.'
			EXE join([l:binding, ':VSA', a:vsa, '<CR>'])
		el
			EXE join([l:binding, ':VS', a:vsns, a:vsa, '<CR>'])
		en
	en
endf

fu! s:adef(size, default, ...)
	let l:arr = map(range(a:size), a:default)
	for i in range(min([a:size, len(a:000)]))
		let l:arr[i] = a:000[i]
	endfo
	return l:arr
endf

