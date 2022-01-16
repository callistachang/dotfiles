let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'
set background=dark
colorscheme gruvbox

hi! link NonText GruvboxBg2
hi ColorColumn ctermbg=0 guibg=grey
hi SignColumn guibg=none
hi CursorLineNR guibg=None
hi LineNr guifg=#83a598
"hi Normal guibg=none

hi! link CocErrorVirtualText GruvboxRed
hi! link CocWarningVirtualText GruvboxOrange
hi! link CocInfoVirtualText GruvboxBlue
hi! link CocHintVirtualText GruvboxBlue

"hi! link GitGutterAdd GruvboxGreenSign
"hi! link GitGutterChange GruvboxYellowSign
"hi! link GitGutterChangeDelete GruvboxYellowSign 
"hi! link GitGutterDelete GruvboxRedSign
"hi! link SignColumn LineNr

let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle

"hi Normal guibg=none ctermbg=none
"hi LineNr guibg=none ctermbg=none
"hi Folded guibg=none ctermbg=none
"hi NonText guibg=none ctermbg=none
"hi SpecialKey guibg=none ctermbg=none
"hi VertSplit guibg=none ctermbg=none
"hi SignColumn guibg=none ctermbg=none
"hi EndOfBuffer guibg=none ctermbg=none

set guifont=FiraCode_Nerd_Font:h14
