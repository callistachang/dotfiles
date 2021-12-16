function! PreventOpenInCHADTree(command_str)
  if (&ft == 'CHADTree' && winnr('$') > 1)
    exe "normal! \<C-w>\<C-w>"
  endif
  exe 'normal! ' . a:command_str . "\<cr>"
endfunction

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

"nnoremap <M-b> :call PreventOpenInCHADTree(":Buffers")<CR>
nnoremap <M-f> :call PreventOpenInCHADTree(":Rg")<CR>
nnoremap <M-p> :call PreventOpenInCHADTree(":Files")<CR>

"inoremap <C-b> <esc> :call PreventOpenInCHADTree(":Buffers")<CR>
inoremap <M-b> <esc> :call PreventOpenInCHADTree(":Rg")<CR>
inoremap <M-b> <esc> :call PreventOpenInCHADTree(":Files")<CR>

let $FZF_DEFAULT_COMMAND="fd --type file --follow --hidden -E .git -E node_modules -E plugged -E __pycache__ -E '*.pyc' -E build"
let $FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
let $FZF_PREVIEW_COMMAND="bat --theme gruvbox-dark --style=numbers,changes --wrap never --color always {} || cat {} || tree -C {}"
let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8, 'yoffset': 0.5, 'xoffset': 0.5, 'border': 'sharp'}}

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

