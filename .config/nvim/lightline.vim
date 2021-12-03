let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed = '[No Name]'
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }


"let g:lightline = {
        "\ 'colorscheme': 'gruvbox',
        "\ 'active': {
        "\   'left': [ [ 'mode', 'paste' ],
        "\             [ 'fugitive', 'gitgutter', 'filename' ] ],
        "\   'right': [ [ 'percent', 'lineinfo' ],
        "\              [ 'syntastic' ],
        "\              [ 'fileformat', 'fileencoding', 'filetype' ] ]
        "\ },
        "\ 'component_function': {
        "\   'fugitive': 'LightLineFugitive',
        "\   'gitgutter': 'LightLineGitGutter',
        "\   'readonly': 'LightLineReadonly',
        "\   'modified': 'LightLineModified',
        "\   'syntastic': 'SyntasticStatuslineFlag',
        "\   'filename': 'LightLineFilename'
        "\ },
        "\ 'subseparator': { 'left': '>', 'right': '' }
        "\ }
