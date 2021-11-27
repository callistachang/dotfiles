inoremap jj <ESC>
let mapleader=";"

" Tab and Shift+Tab to cycle through buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" ;+| to split vertically
" ;+- to split horizontally
" ;+w to delete pane
" ;+j/h/k/l to resize panes
nnoremap <leader>\ :vsplit<CR>
nnoremap <leader>- :split<CR>
nnoremap <leader>w <C-w>q
nnoremap <leader>l :vertical resize -10<cr>
nnoremap <leader>j :resize +5<cr>
nnoremap <leader>k :resize -5<cr>
nnoremap <leader>h :vertical resize +10<cr>

" CTRL+j/k/h/l to move between panes
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l

" CTRL+w to close buffer
nnoremap <C-w> :bd<cr>
