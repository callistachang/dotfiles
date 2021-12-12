call plug#begin('~/.config/nvim/plugged')

"======== AESTHETIC ========
"Pretty status line
Plug 'itchyny/lightline.vim'
"Top buffer line
Plug 'mengelbrecht/lightline-bufferline'
"Color scheme
Plug 'gruvbox-community/gruvbox'
"Side folder tree
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
"Nice file icons
Plug 'ryanoasis/vim-devicons'

"======== UTILITY ========
"Ctrl+/ to comment
Plug 'preservim/nerdcommenter'

"Ctrl+P to find files
"Ctrl+F to search folderwide
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 

"LSP and autocompletion
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

"Pane and window switching
Plug 'christoomey/vim-tmux-navigator'

"Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

"======== GIT ========
"Git integration
Plug 'tpope/vim-fugitive'

"Shows git stuff in the sign column
Plug 'airblade/vim-gitgutter'

"======== LANGUAGE ========
"Solidity integration
Plug 'TovarishFin/vim-solidity'

" === CURRENTLY DISABLED ===
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'on': [] }
Plug 'preservim/nerdtree', { 'on': [] }
Plug 'kassio/neoterm', { 'on' : [] }

call plug#end()

source ~/.config/nvim/fzf.vim
source ~/.config/nvim/chadtree.vim
source ~/.config/nvim/general.vim
source ~/.config/nvim/nerdcommenter.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/lightline.vim
source ~/.config/nvim/treesitter.vim
source ~/.config/nvim/fugitive.vim
source ~/.config/nvim/colorscheme.vim
"source ~/.config/nvim/gitgutter.vim
source ~/.config/nvim/coc.vim
