inoremap jj <ESC>

" Tab and Shift+Tab to cycle through buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" \+| to split vertically
" \+- to split horizontally
" \+w to delete pane
" \+j/h/k/l to resize panes
nnoremap ,\ :vsplit<CR>
nnoremap ,- :split<CR>
nnoremap ,w <C-w>q<CR>
nnoremap ,l :vertical resize -10<cr>
nnoremap ,j :resize +5<cr>
nnoremap ,k :resize -5<cr>
nnoremap ,h :vertical resize +10<cr>

" Shift+j/k/h/l to move between panes
noremap <S-j> <C-w>j
noremap <S-k> <C-w>k
noremap <S-h> <C-w>h
noremap <S-l> <C-w>l

" CTRL+w to close buffer
nnoremap <C-w> :bp<cr>:bd! #<cr>

" Copy and paste in and out of Vim
nnoremap <C-c> "+y
vnoremap <C-c> "+y
nnoremap <C-v> "+p
vnoremap <C-v> "+p

" Save and source file
nnoremap <C-s> :w<CR>:so %<CR>


