"<leader>+r for go run
autocmd FileType go nmap <leader>r <Plug>(go-run)

 "<leader>+j or <leader>+k to move through quickfixes
 "<leader>+x to close quickfix buffer
map <leader>j :cnext<CR>
map <leader>k :cprevious<CR>
nnoremap <leader>x :cclose<CR>

set autowrite
let g:go_list_type='quickfix'
