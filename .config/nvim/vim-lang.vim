" ,+r for "go run"
autocmd FileType go nmap ,g <Plug>(go-run)

" ,+p for "python3"
nnoremap ,p :w<CR>:!python3 %<CR>

" ,+j or ,+k to move between error buffers, 
" ,+x to close buffer
"map ,j :cnext<CR>
"map ,k :cprevious<CR>
"nnoremap ,x :cclose<CR>
"
set autowrite
let g:go_list_type='quickfix'
