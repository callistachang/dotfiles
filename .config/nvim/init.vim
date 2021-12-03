call plug#begin('~/.config/nvim/plugged')
"Status line
Plug 'itchyny/lightline.vim'
"Easy commenting
Plug 'preservim/nerdcommenter'
"Autocomplete
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
"Fuzzy file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Golang integration
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Git integration
Plug 'tpope/vim-fugitive'
"File directory integration
Plug 'preservim/nerdtree'
"Git integration with NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'
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
Plug 'ryanoasis/vim-devicons'
call plug#end()

source ~/.config/nvim/general.vim
source ~/.config/nvim/nerdcommenter.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/vim-lang.vim
source ~/.config/nvim/lightline.vim
source ~/.config/nvim/colorscheme.vim
source ~/.config/nvim/treesitter.vim
source ~/.config/nvim/neoterm.vim
source ~/.config/nvim/vim-fugitive.vim
set t_RV=

