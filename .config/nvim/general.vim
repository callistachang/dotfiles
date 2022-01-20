" File
set title
set encoding=UTF-8
set fileencoding=UTF-8
set scrolloff=4                    

" Panes
set splitright
set splitbelow

" Status
set laststatus=2
set noshowmode

" Line
set cursorline
set linebreak
set nowrap
set number 
set relativenumber 
set showmatch

" Indentation
"filetype plugin indent on
filetype off
filetype plugin indent on
set expandtab                       
set tabstop=4 
set softtabstop=4   
set shiftwidth=4   
set autoindent
set smartindent
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2 expandtab

" Search
set ignorecase    
set smartcase    
set incsearch   

" Vim
syntax on
set hidden                          
set noerrorbells
set noswapfile
set nobackup
set nowritebackup
set mouse=a
set mousemodel=popup
set nocompatible

" Aesthetic
set t_Co=256
set showtabline=2
set termguicolors
"set background=dark
"set colorcolumn=80

" Faster scrolling
set lazyredraw
set ttyfast

set autowrite
set undofile
set shiftround
set virtualedit=block
set nojoinspaces
set nostartofline

" Use clipboard for all delete/yank/change/put operations
if !empty(provider#clipboard#Executable())
    set clipboard+=unnamedplus
endif

