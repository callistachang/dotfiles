call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
call plug#end()

source ~/.config/nvim/general.vim
source ~/.config/nvim/nerdcommenter.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/nerdcommenter.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/coc.vim

colorscheme gruvbox 
let g:airline#extensions#tabline#enabled = 1