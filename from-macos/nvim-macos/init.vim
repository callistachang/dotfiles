call plug#begin('~/.config/nvim/plugged')
" Aesthetics
Plug 'dracula/vim', { 'as': 'dracula' } 
Plug 'itchyny/lightline.vim' " Statusline
Plug 'mengelbrecht/lightline-bufferline' " Bufferline
Plug 'ryanoasis/vim-devicons' " File icons
" Git
Plug 'tpope/vim-fugitive' 
Plug 'junegunn/gv.vim'
" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' "Ctrl+P to find files, Ctrl+F to search words
Plug 'preservim/nerdtree'
" Autocompletion
Plug 'neoclide/coc.nvim', { 'branch': 'release' } "LSP and autocompletion
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' } "Syntax highlighting
" Misc
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'christoomey/vim-tmux-navigator' "Pane and window switching
Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter' "Ctrl+/ to comment
call plug#end()

"Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js PrettierAsync

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
imap <C-_> <Plug>NERDCommenterInsert

source ~/.config/nvim/fzf.vim
source ~/.config/nvim/general.vim
source ~/.config/nvim/aesthetic.vim
source ~/.config/nvim/nvim-treesitter.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/nerdtree.vim

"Resize panes
nnoremap <silent> <S-Up> :resize +5<CR>
nnoremap <silent> <S-Down> :resize -5<CR>
"Resize panes
nnoremap <silent> <S-Right> :vertical resize +5<CR>
nnoremap <silent> <S-Left> :vertical resize -5<CR>
"Open a terminal
nnoremap <leader>ht :below term++rows=15<CR>
nnoremap <leader>vt :vertical term++cols=50<CR>

