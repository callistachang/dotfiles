let g:lightline#bufferline#show_number = 2
"let g:lightline#bufferline#unnamed = '[No Name]'
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ [] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filetype': 'MyFiletype',
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

nmap ,1 <Plug>lightline#bufferline#go(1)
nmap ,2 <Plug>lightline#bufferline#go(2)
nmap ,3 <Plug>lightline#bufferline#go(3)
nmap ,4 <Plug>lightline#bufferline#go(4)
nmap ,5 <Plug>lightline#bufferline#go(5)
nmap ,6 <Plug>lightline#bufferline#go(6)
nmap ,7 <Plug>lightline#bufferline#go(7)
nmap ,8 <Plug>lightline#bufferline#go(8)
nmap ,9 <Plug>lightline#bufferline#go(9)
nmap ,0 <Plug>lightline#bufferline#go(10)

nmap ,c1 <Plug>lightline#bufferline#delete(1)
nmap ,c2 <Plug>lightline#bufferline#delete(2)
nmap ,c3 <Plug>lightline#bufferline#delete(3)
nmap ,c4 <Plug>lightline#bufferline#delete(4)
nmap ,c5 <Plug>lightline#bufferline#delete(5)
nmap ,c6 <Plug>lightline#bufferline#delete(6)
nmap ,c7 <Plug>lightline#bufferline#delete(7)
nmap ,c8 <Plug>lightline#bufferline#delete(8)
nmap ,c9 <Plug>lightline#bufferline#delete(9)
nmap ,c0 <Plug>lightline#bufferline#delete(10)
