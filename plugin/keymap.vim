nnoremap <silent><C-A-d> <Cmd>so $MYVIMRC<Cr>

nnoremap <silent>gt <Cmd>let &background = (&background == 'dark' ? 'light' : 'dark')<Cr>

inoremap jk  <Esc>
inoremap kj  <Esc>
inoremap jjj <Esc>
nnoremap U   <C-r>
noremap  ;   :
noremap  :   ,
noremap  ,   ;
noremap  `   '
noremap  '   `
noremap  H   0
noremap  L   $

nnoremap <expr>0 col('.') == 1 ? '^' : '0'
nnoremap <C-f>   <C-d>
nnoremap <C-b>   <C-u>

nnoremap <silent> <leader>o <Cmd>call append(line("."),     repeat([""], v:count1))<Cr>
nnoremap <silent> <leader>O <Cmd>call append(line(".") - 1, repeat([""], v:count1))<Cr>

nnoremap Y <Cmd>%y<Cr>

nnoremap <silent><leader>/ <Cmd>noh<Cr>
vnoremap /                 /\v
noremap  ?                 ?\v
cnoremap s/                s/\v

inoremap <silent><C-j> <Esc><C-w>ja
inoremap <silent><C-k> <Esc><C-w>ka
inoremap <silent><C-h> <Esc><C-w>ha
inoremap <silent><C-l> <Esc><C-w>la
nnoremap <C-j>         <C-w>j
nnoremap <C-k>         <C-w>k
nnoremap <C-h>         <C-w>h
nnoremap <C-l>         <C-w>l
if has("gui_running")
    nnoremap <C-S-j>       <C-w>-
    nnoremap <C-S-k>       <C-w>+
    nnoremap <C-S-h>       <C-w><
    nnoremap <C-S-l>       <C-w>>
endif

noremap k  gk
noremap gk k
noremap j  gj
noremap gj j

nnoremap gA ga

inoremap <silent><C-s>     <Cmd>w!<Cr>
inoremap <silent><C-q>     <Cmd>x!<Cr>
nnoremap <C-q>             ZZ
nnoremap <C-S-q>           ZQ
nnoremap <silent><C-s>     <Cmd>w<Cr>
nnoremap <silent><C-S-c>   <Cmd>bw<Cr>
nnoremap <leader>q         ZZ
nnoremap <leader>Q         ZQ
nnoremap <silent><leader>w <Cmd>w<Cr>
nnoremap <silent><leader>C <Cmd>bw<Cr>
nnoremap <silent><S-Esc>   <Cmd>qa!<Cr>
noremap  <C-c>             <Esc>

nnoremap Q  <Nop>
nnoremap gq Q

set mouse=
noremap  <ScrollWheelUp>   <Nop>
noremap  <ScrollWheelDown> <Nop>
inoremap <ScrollWheelUp>   <Nop>
inoremap <ScrollWheelDown> <Nop>

if has("gui_running")
    inoremap <silent><A-S-F12> <Cmd>call endout#DecreaseColNumber()<Cr>
    inoremap <silent><End>     <Cmd>call endout#IncreaseColNumber()<Cr>
    inoremap <silent><S-End>   <Cmd>call endout#DecreaseColNumber()<Cr>
endif

nnoremap <silent><F5>   <Cmd>call biterm#RunProgram()<Cr>
inoremap <silent><F5>   <Cmd>call biterm#RunProgram()<Cr>
tnoremap <F1>           <C-\><C-N>
tnoremap <S-F1>         <C-W><C-C>
tnoremap <silent><S-F5> <C-W>N:bw!<Cr>
nnoremap <silent><S-F5> <Cmd>call biterm#Close()<Cr>

if &term !~# "xterm" || &term =~# "win32"
    finish
endif

inoremap <Esc>[lyieu;CL~ <Esc>
map      <Esc>           <Nop>
imap     <Esc>           <Nop>

map <Esc>[lyieu;h~ <C-w><
map <Esc>[lyieu;j~ <C-w>-
map <Esc>[lyieu;k~ <C-w>+
map <Esc>[lyieu;l~ <C-w>>

map <Esc>q <A-q>
map <Esc>w <A-w>
map <Esc>e <A-e>
map <Esc>r <A-r>
map <Esc>t <A-t>
map <Esc>y <A-y>
map <Esc>u <A-u>
map <Esc>i <A-i>
map <Esc>o <A-o>
map <Esc>p <A-p>
map <Esc>a <A-a>
map <Esc>s <A-s>
map <Esc>d <A-d>
map <Esc>f <A-f>
map <Esc>g <A-g>
map <Esc>h <A-h>
map <Esc>j <A-j>
map <Esc>k <A-k>
map <Esc>l <A-l>
map <Esc>z <A-z>
map <Esc>x <A-x>
map <Esc>c <A-c>
map <Esc>v <A-v>
map <Esc>b <A-b>
map <Esc>n <A-n>
map <Esc>m <A-m>

imap     <Esc>[24;3~       <A-F12>
imap     <Esc>[24;4~       <A-S-F12>
imap     <Esc>[24;7~       <C-A-F12>
imap     <Esc>[24;8~       <C-A-S-F12>
smap     <Esc>[24;3~       <A-F12>
smap     <Esc>[24;4~       <A-S-F12>
smap     <Esc>[24;7~       <C-A-F12>
smap     <Esc>[24;8~       <C-A-S-F12>
inoremap <silent><A-S-F12> <Cmd>call endout#DecreaseColNumber()<Cr>

map      <Esc>[lyieu;E~  <End>
map      <Esc>[lyieu;SE~ <S-End>
imap     <Esc>[lyieu;E~  <End>
imap     <Esc>[lyieu;SE~ <S-End>
inoremap <silent><End>   <Cmd>call endout#IncreaseColNumber()<Cr>
inoremap <silent><S-End> <Cmd>call endout#DecreaseColNumber()<Cr>

map <Esc>[lyieu;CAd~ <Cmd>so $MYVIMRC<Cr>
