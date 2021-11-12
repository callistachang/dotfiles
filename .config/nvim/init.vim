call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

source ~/.config/nvim/general.vim
source ~/.config/nvim/nerdcommenter.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/fzf.vim

colorscheme gruvbox 
let g:airline#extensions#tabline#enabled = 1
