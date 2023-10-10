let g:terminal_settings       = {'vertical': 1, 'term_cols': 60}

nnoremap <silent><F5> <Cmd>call biterm#RunProgram()<Cr>
inoremap <silent><F5> <Cmd>call biterm#RunProgram()<Cr>
tnoremap <F1>           <C-\><C-N>
tnoremap <S-F1>         <C-W><C-C>
tnoremap <silent><S-F5> <C-W>N:bw!<Cr>
nnoremap <silent><S-F5> <Cmd>call biterm#Close()<Cr>

autocmd FileType python,javascript nnoremap <silent><leader>Q <Cmd>call biterm#Close()<Cr>

highlight default link Terminal Normal
