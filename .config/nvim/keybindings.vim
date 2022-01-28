let mapleader=","

nnoremap <M-u> <C-u>
nnoremap <M-d> <C-d>

" jk to return to normal mode
inoremap jk <ESC>

" Tab and Shift+Tab to cycle through buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" CTRL+w to close buffer
nnoremap <C-w> :bp<cr>:bd! #<cr>

" Copy and paste in and out of Vim
nnoremap <C-c> "*y
vnoremap <C-c> "*y
nnoremap <C-v> "*p
vnoremap <C-v> "*p

" Save and source file
nnoremap <C-s> :w<CR>:so %<CR>
