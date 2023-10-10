let g:gruvbox_italic         = 1
let g:gruvbox_contrast_dark  = 'soft'
let g:gruvbox_contrast_light = 'soft'

colorscheme gruvbox

nnoremap <silent>gt <Cmd>let &background = (&background == 'dark' ? 'light' : 'dark')<Cr>
