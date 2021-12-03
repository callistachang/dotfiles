function! ToggleNerdTree()
  set eventignore=BufEnter
  NERDTreeToggle
  set eventignore=
endfunction

" Ctrl+n to toggle the NERDTree buffer
nmap <C-n> :call ToggleNerdTree()<CR>
" Ctrl+b to open up the list of buffers

" Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

"Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

"autocmd FileType nerdtree setlocal signcolumn=no

"set autochdir
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeHijackNetrw=0
let g:NERDTreeWinSize=26
"let g:NERDTreeWinPos="right"
"let g:NERDTreeChDirMode=2
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeShowBookmarks=1
let g:NERDTreeCascadeOpenSingleChildDir=1
let g:NERDTreeIgnore=['^node_modules$', '^.mypy_cache$', '\.pyc$', '\.gitattributes', '^__pycache__$']

let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
let g:NERDTreeDirArrowExpandable = "\u00a0"
let g:NERDTreeDirArrowCollapsible = "\u00a0"
"let g:NERDTreeGitStatusUseNerdFonts = 1
