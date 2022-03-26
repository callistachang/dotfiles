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
"nnoremap <C-s> :w<CR>:so %<CR>

nnoremap j gj
nnoremap k gk

"Start of line with H
nnoremap <silent> H ^
"End of line with L
nnoremap <silent> L g_

" Redo with U instead of <C-r>
nnoremap U <C-r>

" Ctrl-C, X, and V for copy, cut, paste to system
"xnoremap <C-c> "+y
"xnoremap <C-x> "+x
"map <C-v> "+gP

" leader+w to save file
nnoremap <leader>w :w!<cr>
inoremap <leader>w <Esc>:w<cr>
