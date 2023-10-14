if has("gui_running")
    set guioptions-=e
    set guioptions-=g
    set guioptions-=m
    set guioptions-=r
    set guioptions-=L
    set guioptions-=t
    set guioptions-=T
    set guifont=JetBrains_Mono:h15
    set guifontwide=Microsoft_YaHei_Mono:h15
endif

if &term =~ 'xterm' || &term == 'win32'
  " Use DECSCUSR escape sequences
  set termguicolors
  let &t_SI = "\e[5 q"    " blink bar
  let &t_SR = "\e[3 q"    " blink underline
  let &t_EI = "\e[1 q"    " blink block
  let &t_ti .= "\e[1 q"   " blink block
  let &t_te .= "\e[0 q"   " default (depends on terminal, normally blink block)
endif

let g:gruvbox_italic         = 1
let g:gruvbox_contrast_dark  = 'soft'
let g:gruvbox_contrast_light = 'soft'

colorscheme gruvbox
