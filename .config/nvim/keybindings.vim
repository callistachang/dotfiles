inoremap jj <ESC>

" Tab and Shift+Tab to cycle through buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" \+| to split vertically
" \+- to split horizontally
" \+w to delete pane
" \+j/h/k/l to resize panes
nnoremap <leader>\ :vsplit<CR>
nnoremap <leader>- :split<CR>
nnoremap <leader>w <C-w>q
nnoremap <leader>l :vertical resize -10<cr>
nnoremap <leader>j :resize +5<cr>
nnoremap <leader>k :resize -5<cr>
nnoremap <leader>h :vertical resize +10<cr>

" Shift+j/k/h/l to move between panes
noremap <S-j> <C-w>j
noremap <S-k> <C-w>k
noremap <S-h> <C-w>h
noremap <S-l> <C-w>l

" CTRL+w to close buffer
nnoremap <C-w> :bd<cr>
