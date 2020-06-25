"█▓▒░ Tabs (Ctrl-t*)
nnoremap <c-t><c-n> :tabnew<cr>
nnoremap <c-t><c-w> :tabclose<cr>
nnoremap <c-t><c-h> :tabprev<cr>
nnoremap <c-t><c-j> :tabprev<cr>
nnoremap <c-t><c-k> :tabnext<cr>
nnoremap <c-t><c-l> :tabnext<cr>
let g:lasttab = 1
nnoremap <c-t><c-t> :exe "tabn ".g:lasttab<cr>

"█▓▒░ Windows/splits (Ctrl-w*)
nnoremap <c-w><c-n> :split<cr>
nnoremap <c-w><c-N> :vsplit<cr>
nnoremap <c-w>q <c-w><c-q>
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>