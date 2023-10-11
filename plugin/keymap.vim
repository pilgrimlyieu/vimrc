let g:mapleader = " "

nnoremap <silent><C-A-d> <Cmd>so $MYVIMRC<Cr>

nnoremap <silent>gt <Cmd>let &background = (&background == 'dark' ? 'light' : 'dark')<Cr>

inoremap jk <Esc>
inoremap kj <Esc>
nnoremap U  <C-r>
vnoremap ;  :
nnoremap ;  :
nnoremap :  ,
nnoremap ,  ;
nnoremap `  '
nnoremap '  `
noremap  H  0
onoremap H  0
noremap  L  $
onoremap L  $

nnoremap <expr>0 col('.') == 1 ? '^' : '0'
nnoremap <C-f> <C-d>
nnoremap <C-b> <C-u>

nnoremap <silent> <leader>o <Cmd>call append(line("."),     repeat([""], v:count1))<Cr>
nnoremap <silent> <leader>O <Cmd>call append(line(".") - 1, repeat([""], v:count1))<Cr>

nnoremap <silent><leader>/ <Cmd>noh<Cr>
vnoremap /                 /\v
nnoremap ?                 ?\v
vnoremap ?                 ?\v
cnoremap s/                s/\v

inoremap <silent><C-j> <Esc><C-w>ja
inoremap <silent><C-k> <Esc><C-w>ka
inoremap <silent><C-h> <Esc><C-w>ha
inoremap <silent><C-l> <Esc><C-w>la
nnoremap <C-j>         <C-W>j
nnoremap <C-k>         <C-W>k
nnoremap <C-h>         <C-W>h
nnoremap <C-l>         <C-W>l
nnoremap <C-S-j>       <C-W>-
nnoremap <C-S-k>       <C-W>+
nnoremap <C-S-h>       <C-W><
nnoremap <C-S-l>       <C-W>>

nnoremap k  gk
vnoremap k  gk
nnoremap gk k
vnoremap gk k
nnoremap j  gj
vnoremap j  gj
nnoremap gj j
vnoremap gj j

nnoremap gA ga

inoremap <silent><C-s>     <Cmd>w!<Cr>a
inoremap <silent><C-q>     <Cmd>x!<Cr>a
inoremap <silent><C-S-q>   <Cmd>q!<Cr>a
inoremap <silent><C-S-c>   <Cmd>bw!<Cr>a
nnoremap <C-q>             ZZ
nnoremap <C-S-q>           ZQ
nnoremap <silent><C-s>     <Cmd>w<Cr>
" nnoremap <silent><C-S-c>   <Cmd>bw<Cr>
nnoremap <leader>q         ZZ
nnoremap <leader>Q         ZQ
nnoremap <silent><leader>w <Cmd>w<Cr>
" nnoremap <silent><leader>C <Cmd>bw<Cr>
nnoremap <silent><S-Esc>   <Cmd>qa!<Cr>
vnoremap <C-q>             <Esc>ZZ
vnoremap <C-S-q>           <Esc>ZQ
vnoremap <silent><C-s>     <Cmd>w<Cr>
" vnoremap <silent><C-S-c>   <Cmd>bw<Cr>
vnoremap <silent><S-Esc>   <Cmd>qa!<Cr>

nnoremap Q  <Nop>
nnoremap gq Q

set mouse=
noremap  <ScrollWheelUp>   <nop>
noremap  <ScrollWheelDown> <nop>
inoremap <ScrollWheelUp>   <nop>
inoremap <ScrollWheelDown> <nop>

inoremap <silent><A-S-F12> <Cmd>call endout#DecreaseColNumber()<Cr>
inoremap <silent><End>     <Cmd>call endout#IncreaseColNumber()<Cr>
inoremap <silent><S-End>   <Cmd>call endout#DecreaseColNumber()<Cr>

nnoremap <silent><F5> <Cmd>call biterm#RunProgram()<Cr>
inoremap <silent><F5> <Cmd>call biterm#RunProgram()<Cr>
tnoremap <F1>           <C-\><C-N>
tnoremap <S-F1>         <C-W><C-C>
tnoremap <silent><S-F5> <C-W>N:bw!<Cr>
nnoremap <silent><S-F5> <Cmd>call biterm#Close()<Cr>
