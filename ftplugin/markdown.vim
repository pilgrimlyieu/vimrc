setlocal spell spelllang=en_us,cjk

" inoremap <silent><C-x>      <Cr><Cr><hr class='section'><Cr><Cr>
inoremap <silent><C-p>      <Cmd>call mdip#MarkdownClipboardImage()<Cr>
inoremap <silent><C-t>      <Cmd>UpdateToc<Cr>
nnoremap <silent><leader>mt <Cmd>UpdateToc<Cr>
vnoremap <silent><leader>vl <Plug>(EasyAlign)*<C-x>\\\@<!<Bar><Cr>
vnoremap <silent><leader>vr <Plug>(EasyAlign)*<C-a><Bs>r<Cr><C-x>\\\@<!<Bar><Cr>
vnoremap <silent><leader>vv <Plug>(EasyAlign)*<C-a><Bs>c<Cr><C-x>\\\@<!<Bar><Cr>
nnoremap <silent><leader>vl <Plug>(EasyAlign)ip*<C-x>\\\@<!<Bar><Cr>
nnoremap <silent><leader>vr <Plug>(EasyAlign)ip*<C-a><Bs>r<Cr><C-x>\\\@<!<Bar><Cr>
nnoremap <silent><leader>vv <Plug>(EasyAlign)ip*<C-a><Bs>c<Cr><C-x>\\\@<!<Bar><Cr>
inoremap <silent><C-n>      <C-g>u<Esc>[s1z=`'a<C-g>u

inoreabbr <silent>toc <Cmd>GenTocGFM<Cr>

let b:coc_pairs_disabled = ["'"]

let g:vmt_auto_update_on_save = 0
let g:vmt_fence_text          = 'TOC Start'
let g:vmt_fence_closing_text  = 'TOC End'
let g:vmt_list_item_char      = '-'
let g:mdip_imgdir             = 'images'
let g:mdip_imgname            = ''
