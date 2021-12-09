"Integration with filetree
function! PreventOpenInCHADTree(command_str)
  if (&ft == 'CHADTree' && winnr('$') > 1)
    exe "normal! \<C-w>\<C-w>"
  endif
  exe 'normal! ' . a:command_str . "\<cr>"
endfunction

nnoremap <C-b> :call PreventOpenInCHADTree(':Buffers')<CR>
nnoremap <C-f> :call PreventOpenInCHADTree(':Rg')<CR>
nnoremap <C-l> :call PreventOpenInCHADTree(':BLines')<CR>
nnoremap <C-p> :call PreventOpenInCHADTree(':Files')<CR>
nnoremap <C-h> :call PreventOpenInCHADTree(':History')<CR>

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --no-filename --hidden --line-number --no-heading --color=always --smart-case %s -g "!{node_modules/*,.git/*,**/plugged/*,**/__pycache__/*,*.pyc,build/*}"'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

let $FZF_DEFAULT_COMMAND='rg --files --follow --hidden -g "!{node_modules/*,.git/*,plugged/*,__pycache__/*,*.pyc,build/*}"'
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

