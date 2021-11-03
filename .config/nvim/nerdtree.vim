autocmd VimEnter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
map <A-`> <C-w><C-w>