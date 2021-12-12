let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

set background=dark
colorscheme gruvbox

highlight! link NonText GruvboxBg2
highlight ColorColumn ctermbg=0 guibg=grey
highlight SignColumn guibg=none
highlight CursorLineNR guibg=None
"highlight Normal guibg=none
highlight LineNr guifg=#83a598

highlight CocErrorVirtualText guifg=#83a598
highlight CocWarningVirtualText guifg=#90be7e 
highlight CocInfoVirtualText guifg=#90be7e 
highlight CocHintVirtualText guifg=#90be7e

highlight! link GitGutterAdd GruvboxAquaSign
highlight! link GitGutterChange GruvboxYellowSign
highlight! link GitGutterChangeDelete GruvboxYellowSign 
highlight! link GitGutterDelete GruvboxRedSign

highlight! link SignColumn LineNr

let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle
