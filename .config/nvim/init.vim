call plug#begin('~/.config/nvim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'morhetz/gruvbox'
Plug 'TovarishFin/vim-solidity'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'neovim/nvim-lspconfig'
call plug#end()

source ~/.config/nvim/general.vim
source ~/.config/nvim/nerdcommenter.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/vim-go.vim
source ~/.config/nvim/lightline.vim
source ~/.config/nvim/colorscheme.vim
source ~/.config/nvim/treesitter.vim
"source ~/.config/nvim/vim-fugitive.vim
