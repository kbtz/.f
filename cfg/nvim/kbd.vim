let mapleader="-"

MAP	MR
MAP	NR	n
MAP	IR	i
MAP	NL	n	<leader>
MAP	NLL	n	<leader><leader>

NL	r :source\ $MYVIMRC<CR>
NLL	r :silent\ w\ <bar>\ source\ $MYVIMRC<CR>

NL	n :tabe quickOpen
NL	N none createFileFromExplorer workbench.files

NL	t :tabn<CR> nextEditorInGroup
NL	T :tabp<CR> previousEditorInGroup

NL	<ESC> :q!<CR> closeActiveEditor

NL	s :w<CR> files.save
NL	S :wq<CR> none

NL	c :%s///g<left><left><left> startFindReplaceAction editor
NL	y none rename editor

NL	h none showHover editor
NL	g none revealDefinition editor

"" dirty new lines to keep indentation
NR	o ox<BS><ESC>
NR	O Ox<BS><ESC>

NR	<silent>\ <ESC> :noh<CR>

MR	> >>
MR	< <<
MR	<C-SPACE> >>
MR	<S-BS> <<

"" moving
MR	<TAB> <Up>
MR	<CR> <Down>
MR	<TAB> <Up>
MR	<CR> <Down>
MR	m G

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
