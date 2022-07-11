let mapleader=","

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

nnoremap j gj
nnoremap k gk

"Start of line with space
nnoremap <Space> ^
"End of line with L
nnoremap <CR> g_

" Redo with U instead of <C-r>
nnoremap U <C-r>

" leader+w to save file
nnoremap <leader>w :w!<cr>
inoremap <leader>w <Esc>:w<cr>

" leader+q to quit
nnoremap <leader>q :wq!<cr>
inoremap <leader>q <Esc>:wq<cr>

"Resize panes
nnoremap <silent> <S-Up> :resize +5<CR>
nnoremap <silent> <S-Down> :resize -5<CR>
"Resize panes
nnoremap <silent> <S-Right> :vertical resize -5<CR>
nnoremap <silent> <S-Left> :vertical resize +5<CR>

" SELECTION -----------------------------------------
"Swap v and V 
nnoremap V v
nnoremap v V
"Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

