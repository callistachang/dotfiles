function! FZFOpen(command_str)
  if (expand('%') =~# 'NERD_tree' && winnr('$') > 1)
    exe "normal! \<c-w>\<c-w>"
  endif
  exe 'normal! ' . a:command_str . "\<cr>"
endfunction

function! s:find_files()
    let git_dir = system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
    if git_dir != ''
        execute 'GFiles' git_dir
    else
        execute 'Files'
    endif
endfunction
command! ProjectFiles execute s:find_files()

nnoremap <C-b> :call FZFOpen(':Buffers')<CR>
nnoremap <C-f> :call FZFOpen(':Rg')<CR>
nnoremap <C-l> :call FZFOpen(':BLines')<CR>
nnoremap <C-p> :call FZFOpen(':ProjectFiles')<CR>
nnoremap <C-h> :call FZFOpen(':History')<CR>

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --files --hidden --line-number --no-heading --color=always --smart-case %s -g "!{node_modules/*,.git/*,**/plugged/*,**/__pycache__/*,*.pyc,build/*}"'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

let $FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*,plugged/*,__pycache__/*,*.pyc,build/*}"'
let g:fzf_layout = {'up': '~90%', 'window': {'width': 0.8, 'height': 0.8, 'yoffset':0.5, 'xoffset': 0.5, 'border': 'sharp' }}

set ttimeoutlen=0
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] 
    \ }

