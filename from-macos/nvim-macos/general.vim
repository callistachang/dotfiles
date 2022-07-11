" File
set title
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set scrolloff=4                    

" Panes
set splitright
set splitbelow

" Status
set laststatus=2
set noshowmode

" Line
set linebreak
set nowrap
set number 
set relativenumber 
set showmatch

" Indentation
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
set lazyredraw
set ttyfast
set autowrite
set undofile
set shiftround
set virtualedit=block
set nojoinspaces
set nostartofline
