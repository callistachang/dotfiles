let g:neoterm_default_mod='belowright' " open terminal at the bottom
let g:neoterm_size=16
let g:neoterm_autoscroll=1 " scroll to the bottom when running a command

nnoremap <c-t> :Ttoggle<CR>
inoremap <c-t> <Esc>:Ttoggle<CR>
tnoremap <c-t> <c-\><c-n>:Ttoggle<CR>

tnoremap <Esc> <c-\><c-n>
tnoremap <S-k> <c-\><c-n><C-w>k
tnoremap <S-h> <c-\><c-n><C-w>h
tnoremap <S-j> <c-\><c-n><C-w>j
tnoremap <S-k> <c-\><c-n><C-w>k
tnoremap <Tab> <c-\><c-n>:bnext<CR>

"Automatically enter Terminal mode at the terminal
"autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufEnter term://* startinsert
autocmd BufLeave term://* stopinsert
