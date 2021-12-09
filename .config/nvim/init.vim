call plug#begin('~/.config/nvim/plugged')
"Status line
Plug 'itchyny/lightline.vim'
"Easy commenting
Plug 'preservim/nerdcommenter'
"Shows gitdiff in the sign column
Plug 'airblade/vim-gitgutter'
"Autocomplete
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
"Fuzzy file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 
"Git integration
Plug 'tpope/vim-fugitive'
"Top bufferline
Plug 'mengelbrecht/lightline-bufferline'
"Color scheme
Plug 'morhetz/gruvbox'
"Solidity integration
Plug 'TovarishFin/vim-solidity'
"Better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
"Integrated terminal
Plug 'kassio/neoterm'
"Nice file icons
Plug 'ryanoasis/vim-devicons'
"NERDTree, but CHAD
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

" === CURRENTLY DISABLED ===
"Golang integration
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'on': [] }
"File directory integration
Plug 'preservim/nerdtree', {'on':[] }

call plug#end()

source ~/.config/nvim/fzf.vim
source ~/.config/nvim/chadtree.vim
source ~/.config/nvim/general.vim
source ~/.config/nvim/nerdcommenter.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/coc.vim
"source ~/.config/nvim/vim-lang.vim
source ~/.config/nvim/lightline.vim
source ~/.config/nvim/colorscheme.vim
source ~/.config/nvim/treesitter.vim
source ~/.config/nvim/neoterm.vim
source ~/.config/nvim/fugitive.vim
source ~/.config/nvim/gitgutter.vim
