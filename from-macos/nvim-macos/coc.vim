let g:coc_global_extensions = [
      \ 'coc-tsserver',
      \ 'coc-eslint',
      \ 'coc-prettier',
      \ 'coc-html',
      \ 'coc-rust-analyzer',
      \ 'coc-htmldjango',
      \ 'coc-pairs',
      \ 'coc-sh',
      \ 'coc-emmet',
      \ 'coc-pyright',
      \ 'coc-restclient',
      \ 'coc-css',
      \ 'coc-go',
      \ 'coc-json',
      \ 'coc-yaml',
      \ 'coc-docker',
      \ 'coc-vimlsp',
      \]

" Tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <Tab>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump', ''])\<CR>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" <C-space> to trigger completion in insert mode.
inoremap <silent><expr> <C-space> coc#refresh()

" [g and ]g to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" g<Space> to trigger actions
nmap <silent> g<Space> :CocAction<CR>

" gh to show documentation in preview window.
nnoremap <silent> gh :call <SID>show_documentation()<CR>

" Find implementation
nmap <silent> gi <Plug>(coc-implementation)

" Find definition
nmap <silent> gd <Plug>(coc-definition)

" Find references
nmap <silent> gj <Plug>(coc-references)

" Rename symbol
nmap <silent> gn <Plug>(coc-rename)

autocmd CursorHold * silent call CocActionAsync('highlight')

xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
