let g:prettier#autoformat = 0
autocmd BufWritePre *.sol,*.js PrettierAsync
