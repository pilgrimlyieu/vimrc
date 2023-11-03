setlocal spell spelllang=en_us,cjk

" inoremap <silent><C-x>      <Cr><Cr><hr class='section'><Cr><Cr>
inoremap <buffer><silent><C-p>      <Cmd>call mdip#MarkdownClipboardImage()<Cr>
inoremap <buffer><silent><C-t>      <Cmd>UpdateToc<Cr>
nnoremap <buffer><silent><leader>mt <Cmd>UpdateToc<Cr>
vnoremap <buffer><silent><leader>vl <Plug>(EasyAlign)*<C-x>\\\@<!<Bar><Cr>
vnoremap <buffer><silent><leader>vr <Plug>(EasyAlign)*<C-a><Bs>r<Cr><C-x>\\\@<!<Bar><Cr>
vnoremap <buffer><silent><leader>vv <Plug>(EasyAlign)*<C-a><Bs>c<Cr><C-x>\\\@<!<Bar><Cr>
nnoremap <buffer><silent><leader>vl <Plug>(EasyAlign)ip*<C-x>\\\@<!<Bar><Cr>
nnoremap <buffer><silent><leader>vr <Plug>(EasyAlign)ip*<C-a><Bs>r<Cr><C-x>\\\@<!<Bar><Cr>
nnoremap <buffer><silent><leader>vv <Plug>(EasyAlign)ip*<C-a><Bs>c<Cr><C-x>\\\@<!<Bar><Cr>
inoremap <buffer><silent><C-n>      <C-g>u<Esc>[s1z=`'a<C-g>u

inoreabbr <buffer><silent>toc <Cmd>GenTocGFM<Cr>

let b:coc_pairs_disabled = ["'"]

let g:vmt_auto_update_on_save = 0
let g:vmt_fence_text          = 'TOC Start'
let g:vmt_fence_closing_text  = 'TOC End'
let g:vmt_list_item_char      = '-'
let g:mdip_imgdir             = 'images'
let g:mdip_imgname            = ''

if !has("gui_running")
    let g:vimtex_syntax_conceal = {
                \ 'accents': 1,
                \ 'ligatures': 0,
                \ 'cites': 1,
                \ 'fancy': 1,
                \ 'spacing': 1,
                \ 'greek': 1,
                \ 'math_bounds': 0,
                \ 'math_delimiters': 1,
                \ 'math_fracs': 1,
                \ 'math_super_sub': 1,
                \ 'math_symbols': 1,
                \ 'sections': 0,
                \ 'styles': 1,
                \}
else
    let g:vimtex_syntax_conceal_disable = 1
endif
