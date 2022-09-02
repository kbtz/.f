let mapleader="-"

MAP	MR
MAP	NR	n
MAP	IR	i
MAP	VR	v
MAP	VL	v	<leader>
MAP	NL	n	<leader>
MAP	NLL	n	<leader><leader>

NL	r :source\ $MYVIMRC<CR>
NLL	r :silent\ w\ <bar>\ source\ $MYVIMRC<CR> none

NL	n :tabe quickOpen
NL	N none createFileFromExplorer workbench.files

NL	<ESC> :q!<CR> closeActiveEditor

NL	s :w<CR> files.save
NLL	s :wq<CR> macros.wq

NL	= none focusSideBar

NL	c :%s///g<left><left><left> startFindReplaceAction editor
NL	y none rename editor

NL	h none showHover editor
NL	g none revealDefinition editor
NL	y none gotoSymbol
NL	p none triggerParameterHints editor

"" search
VL v :call VSCodeNotifyVisual('noop', 1)<CR>
VL / y/\V<C-R>=escape(@",'/\')<CR><CR>
NR	<silent>\ <ESC> :noh<CR>

"" visual
VR v <C-V>
VR i <S-I>

MR	> >>
MR	< <<
MR	<C-SPACE> >>
MR	<C-A-SPACE> <<

"" dirty new lines to keep indentation
NR	o ox<BS><ESC>
NR	O Ox<BS><ESC>

"" moving
MR	<TAB> <Up>
MR	<CR> <Down>
MR	<TAB> <Up>
MR	<CR> <Down>
MR	<Home> gg
MR	<End> G

"" line move
NR	<S-TAB> <C-Y>
NR	<S-CR> <C-E>

"" move selection
MR	<M-TAB> none moveLinesUpAction editor
MR	<M-CR> none moveLinesDownAction editor

"" scroll
MR	<A-TAB> :m-2<CR>==
MR	<A-CR> :m+<CR>==

"" snek  sssss  sssss
MR	f <Plug>Sneak_f
MR	F <Plug>Sneak_F
MR	, <Plug>Sneak_;
MR	; <Plug>Sneak_,

"" wat ?
"nnoremap <C-P> a<C-R>0
"inoremap <C-P> <C-R>0

"inoremap <C-CR> <C-X><C-N>
"inoremap <S-TAB> <C-X><C-F>
"inoremap '' ''<left>
"inoremap ' '
"inoremap (( ()<left>
"inoremap ( (
"inoremap [[ []<left>
"inoremap <leader>[ ${]}<left><left>
