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

function! g:FzfFilesSource()
  let l:base = fnamemodify(expand('%'), ':h:.:S')
  let l:proximity_sort_path = $HOME . '/.cargo/bin/proximity-sort'

  if base == '.'
    " if you prefer something like git ls-files, use that here instead!
    return 'rg --files'
  else
    return printf('rg --files | %s %s', l:proximity_sort_path, expand('%'))
  endif
endfunction

noremap <C-p> :call fzf#vim#files('', { 'source': g:FzfFilesSource(),
      \ 'options': [
      \   '--tiebreak=index'
      \  ]})<CR>

nnoremap <C-b> :Buffers<CR>
nnoremap <C-f> :Rg<CR>

inoremap <C-b> <esc> :Buffers<CR>
inoremap <C-f> <esc> :Rg<CR>

let $FZF_DEFAULT_COMMAND="fd --type file --follow --hidden -E .git -E node_modules -E plugged -E __pycache__ -E '*.pyc' -E build"
let $FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
let $FZF_PREVIEW_COMMAND="bat --theme dracula --style=numbers,changes --wrap never --color always {} || cat {} || tree -C {}"
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

