let mapleader="-"
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>S :wq<CR>
nnoremap <leader><ESC> :q!<CR>

nnoremap <leader><leader>t :tabe 
nnoremap <leader>t :tabn<CR>
nnoremap <leader>T :tabp<CR>

nnoremap <leader>n :bn<CR>
nnoremap <leader>N :bp<CR>

nnoremap <leader>X :Lexplore<CR>
nnoremap <leader>x :Rexplore<CR>

" dirty new lines to keep indentation
nnoremap o ox<BS><ESC>
nnoremap O Ox<BS><ESC>

nnoremap <ESC> :noh<CR>

" moving
nnoremap k :echo "TAB"<CR>
nnoremap <TAB> <Up>
nnoremap <S-TAB> <C-Y>
nnoremap <A-TAB> :m-2<CR>==
nnoremap j :echo "ENTER"<CR>
nnoremap <CR> <Down>
nnoremap <S-CR> <C-E>
nnoremap <A-CR> :m+<CR>==
nnoremap l :echo "SPACE"<CR>
nnoremap h :echo "BACKSPACE"<CR>

" sneak  sssss  sssss
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map , <Plug>Sneak_;
map ; <Plug>Sneak_,

inoremap <C-CR> <C-X><C-N>
inoremap <S-TAB> <C-X><C-F>
