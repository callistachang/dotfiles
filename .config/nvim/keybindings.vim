inoremap jj <ESC>

" Tab and Shift+Tab to cycle through buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" ;+| to split vertically
" ;+- to split horizontally
" ;+j/h/k/l to resize panes
nnoremap ;\ :vsplit<CR>
nnoremap ;- :split<CR>
nnoremap ;l :vertical resize -10<cr>
nnoremap ;j :resize +5<cr>
nnoremap ;k :resize -5<cr>
nnoremap ;h :vertical resize +10<cr>

" CTRL+j/k/h/l to move between panes
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l

" CTRL+w to close buffer
nnoremap <C-w> <C-w>q
