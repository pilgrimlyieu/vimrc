if &term =~ 'xterm' || &term == 'win32'
  " Use DECSCUSR escape sequences
  set termguicolors
  let &t_SI = "\e[5 q"    " blink bar
  let &t_SR = "\e[3 q"    " blink underline
  let &t_EI = "\e[1 q"    " blink block
  let &t_ti .= "\e[1 q"   " blink block
  let &t_te .= "\e[0 q"   " default (depends on terminal, normally blink block)
endif
