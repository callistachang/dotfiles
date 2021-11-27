" ;+r for "go run"
autocmd FileType go nmap ,r <Plug>(go-run)

" ;+j or ;+k to move between error buffers, 
" ;+x to close buffer
map ,j :cnext<CR>
map ,k :cprevious<CR>
nnoremap ,x :cclose<CR>

" ;+b for "go build" or "go test"
function! s:build_go_files()
    let l:file = expand('%')
    if l:file =~# '^\f\+_test\.go$'
        call go#test#Test(0, 1)
    elseif l:file =~# '^\f\+\.go$'
        call go#cmd#Build(0)
    endif
endfunction
autocmd FileType go nmap ,b :<C-u>call <SID>build_go_files()<CR>

set autowrite
let g:go_list_type='quickfix'