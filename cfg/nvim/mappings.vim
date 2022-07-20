let mapleader="-"
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>S :wq<CR>
nnoremap <leader><ESC> :q!<CR>

nnoremap <leader><leader>t :tabe 
nnoremap <leader>t :tabn<CR>
nnoremap <leader>T :tabp<CR>

nnoremap <leader>n :tabe 

nnoremap <leader>c :%s///g<left><left><left>

" dirty new lines to keep indentation
nnoremap o ox<BS><ESC>
nnoremap O Ox<BS><ESC>

nnoremap <silent> <ESC> :noh<CR>

nnoremap > >>
nnoremap < <<

" moving
nnoremap <TAB> <Up>
nnoremap <CR> <Down>
vnoremap <TAB> <Up>
vnoremap <CR> <Down>

" line move
nnoremap <S-TAB> <C-Y>
nnoremap <S-CR> <C-E>

" scroll
nnoremap <A-TAB> :m-2<CR>==
nnoremap <A-CR> :m+<CR>==

" snek  sssss  sssss
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map , <Plug>Sneak_;
map ; <Plug>Sneak_,

nnoremap <C-P> a<C-R>0
inoremap <C-P> <C-R>0

inoremap <C-CR> <C-X><C-N>
inoremap <S-TAB> <C-X><C-F>
inoremap '' ''<left>
inoremap ' '
inoremap (( ()<left>
inoremap ( (
inoremap [[ []<left>
inoremap <leader>[ ${]}<left><left>
