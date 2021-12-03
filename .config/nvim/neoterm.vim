"let g:neoterm_default_mod='belowright' " open terminal in bottom split
let g:neoterm_default_mod='belowright' " open terminal in bottom split
let g:neoterm_size=14 " terminal split size
let g:neoterm_autoscroll=1 " scroll to the bottom when running a command
nnoremap <c-y> :TREPLSendLine<cr>j " send current line and move down
vnoremap <c-y> :TREPLSendSelection<cr> " send current selection

nnoremap <c-t> :Ttoggle<CR>
inoremap <c-t> <Esc>:Ttoggle<CR>
tnoremap <c-t> <c-\><c-n>:Ttoggle<CR>

tnoremap <Esc> <c-\><c-n>
