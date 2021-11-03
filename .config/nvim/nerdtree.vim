autocmd VimEnter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
map <A-s> <C-W>w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <A-j> <C-W>j
map <A-k> <C-W>k
map <A-h> <C-W>h
map <A-l> <C-W>l 
