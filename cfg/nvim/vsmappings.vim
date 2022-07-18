let mapleader="-"

function Action(name, from= "workbench")
	call VSCodeNotify(a:from . ".action." . a:name)
endfunction

nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>s :call Action("files.save")<CR>
nnoremap <leader><ESC> :call Action("closeActiveEditor")<CR>

nnoremap <leader>t :call Action("nextEditorInGroup")<CR>
nnoremap <leader>T :call Action("previousEditorInGroup")<CR>

nnoremap <leader>n :call Action("quickOpen")<CR>
nnoremap <leader>N :call Action("createFileFromExplorer", "workbench.files")<CR>

nnoremap <leader>c :call Action("startFindReplaceAction", "editor")<CR>
nnoremap <leader>y :call Action("rename", "editor")<CR>

nnoremap <leader>h :call Action("showHover", "editor")<CR>
nnoremap <leader>H :call Action("revealDefinition", "editor")<CR>

nnoremap <silent> <ESC> :noh<CR>

" moving
nnoremap <CR> <Down>
vnoremap <TAB> <Up>
nnoremap <TAB> <Up>
vnoremap <CR> <Down>

" move selection
nnoremap <M-TAB> :call Action("moveLinesUpAction", "editor")<CR>
nnoremap <M-CR> :call Action("moveLinesDownAction", "editor")<CR>
nnoremap <C-SPACE> >>
nnoremap <S-BS> <<

" snek sssss sss
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map , <Plug>Sneak_;
map ; <Plug>Sneak_,
