let g:netrw_list_hide = '^\.\.\=/$'
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_hide = 1

" give me back my leader
nmap <buffer> - -

nmap <buffer> <CR> <DOWN>
nmap <buffer> <SPACE> <PLUG>NetrwLocalBrowseCheck
nmap <buffer> <BACKSPACE> <PLUG>NetrwBrowseUpDir

