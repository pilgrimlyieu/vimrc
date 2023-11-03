setlocal spell spelllang=en_us,cjk

inoremap <buffer><silent><C-n> <C-g>u<Esc>[s1z=`'a<C-g>u
nnoremap <buffer><silent>,lw   <Cmd>VimtexCountWords!<Cr>
imap     <Plug>(disable-]])    <Plug>(vimtex-delim-close)
