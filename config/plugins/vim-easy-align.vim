nnoremap ga <Plug>(EasyAlign)
vnoremap ga <Plug>(EasyAlign)

nnoremap <silent><expr>g:       '<Plug>(EasyAlign)ip' . v:count1 . '<C-r>0<Cr><C-x>\(\\\@<!:=\@!\s*\)\@<=.<Cr>'
vnoremap <silent><expr>g:       '<Plug>(EasyAlign)' . v:count1 . '<C-r>0<Cr><C-x>\(\\\@<!:=\@!\s*\)\@<=.<Cr>'
nnoremap <silent>g=             <Plug>(EasyAlign)ip=
vnoremap <silent>g=             <Plug>(EasyAlign)*=
nnoremap <silent><expr>g<Space> '<Plug>(EasyAlign)ip' . v:count1 . ' \<Cr>'
vnoremap <silent><expr>g<Space> '<Plug>(EasyAlign)' . v:count1 . ' \<Cr>'
