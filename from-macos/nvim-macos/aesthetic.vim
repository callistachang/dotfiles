let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#unnamed = '[No Name]'
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ [ ] ],
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }

nmap <leader>1 <Plug>lightline#bufferline#go(1)
nmap <leader>2 <Plug>lightline#bufferline#go(2)
nmap <leader>3 <Plug>lightline#bufferline#go(3)
nmap <leader>4 <Plug>lightline#bufferline#go(4)
nmap <leader>5 <Plug>lightline#bufferline#go(5)
nmap <leader>6 <Plug>lightline#bufferline#go(6)
nmap <leader>7 <Plug>lightline#bufferline#go(7)
nmap <leader>8 <Plug>lightline#bufferline#go(8)
nmap <leader>9 <Plug>lightline#bufferline#go(9)
nmap <leader>0 <Plug>lightline#bufferline#go(10)

nmap <leader>c1 <Plug>lightline#bufferline#delete(1)
nmap <leader>c2 <Plug>lightline#bufferline#delete(2)
nmap <leader>c3 <Plug>lightline#bufferline#delete(3)
nmap <leader>c4 <Plug>lightline#bufferline#delete(4)
nmap <leader>c5 <Plug>lightline#bufferline#delete(5)
nmap <leader>c6 <Plug>lightline#bufferline#delete(6)
nmap <leader>c7 <Plug>lightline#bufferline#delete(7)
nmap <leader>c8 <Plug>lightline#bufferline#delete(8)
nmap <leader>c9 <Plug>lightline#bufferline#delete(9)
nmap <leader>c0 <Plug>lightline#bufferline#delete(10)

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
set background=dark
colorscheme dracula

hi Normal guibg=NONE ctermbg=NONE
hi ColorColumn ctermbg=0 guibg=grey
hi SignColumn guibg=none
hi CursorLineNR guibg=None
hi LineNr guifg=#83a598

let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle

set guifont=FiraCode_Nerd_Font:h14
