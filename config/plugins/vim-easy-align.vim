nnoremap ga <Plug>(EasyAlign)
vnoremap ga <Plug>(EasyAlign)

nnoremap <silent>g:             <Plug>(EasyAlign)ip*<C-l>0<Cr><C-x>\\\@<!:\(=\)\@!<Cr>
vnoremap <silent>g:             <Plug>(EasyAlign)*<C-l>0<Cr><C-x>\\\@<!:\(=\)\@!<Cr>
nnoremap <silent>g=             <Plug>(EasyAlign)ip=<Cr>
vnoremap <silent>g=             <Plug>(EasyAlign)*=<Cr>
nnoremap <silent><expr>g<Space> '<C-u><Plug>(EasyAlign)ip' . v:count1 . ' \<Cr>'
vnoremap <silent><expr>g<Space> '<C-u><Plug>(EasyAlign)' . v:count1 . ' \<Cr>'
