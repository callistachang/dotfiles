let g:chadtree_settings = {
    \ "keymap": {
    \   "jump_to_current": ['m']
    \ },
    \ "view": {
    \   "width": 26,
    \ },
    \ "theme": {
    \   "icon_glyph_set": "devicons",
    \   "text_colour_set": "env",
    \ }
    \ }

" Ctrl+N to open CHADTree
nmap <M-n> :CHADopen<CR>

" Exit Vim if CHADTree is the last window open
autocmd bufenter * if (winnr("$") == 1 && &buftype == 'nofile' && &filetype == 'CHADTree') | q! | endif
