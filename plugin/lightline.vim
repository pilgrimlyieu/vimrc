if !g:plugins_loaded_status.lightline
    finish
endif

let g:lightline = {
\ 'colorscheme': 'gruvbox',
\ 'tabline': { },
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename' ] ],
\   'right': [ [ 'lineinfo' ],
\              [ 'fileformat', 'fileencoding', 'filetype'] ]
\ },
\ 'component_expand': { },
\ 'component_type': { },
\ 'component_function': {
\   'gitbranch': 'lightlinefunc#GitBranch',
\   'lineinfo' : 'lightlinefunc#LineInfo',
\ },
\ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
\ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
\}

let g:viewplugins = 'NERD_tree\|\[Plugins\]\|\[coc-explorer\]'

let s:palette = g:lightline#colorscheme#gruvbox#palette

if g:plugins_loaded_status.lightline_bufferline
    set showtabline=2
    let s:palette.tabline.middle = [['#282C34', '#3c3836', 235, 243]]
    let g:lightline.tabline = {
                \   'left'  : [ ['buffers'] ],
                \   'right' : [ ],
                \ }
    call extend(g:lightline.component_expand, {
                \   'buffers' : 'lightline#bufferline#buffers',
                \ })
    call extend(g:lightline.component_type, {
                \   'buffers' : 'tabsel',
                \ })

    let g:lightline#bufferline#show_number     = 2
    let g:lightline#bufferline#unicode_symbols = 1

    nnoremap <Leader>1  <Plug>lightline#bufferline#go(1)
    nnoremap <Leader>2  <Plug>lightline#bufferline#go(2)
    nnoremap <Leader>3  <Plug>lightline#bufferline#go(3)
    nnoremap <Leader>4  <Plug>lightline#bufferline#go(4)
    nnoremap <Leader>5  <Plug>lightline#bufferline#go(5)
    nnoremap <Leader>6  <Plug>lightline#bufferline#go(6)
    nnoremap <Leader>7  <Plug>lightline#bufferline#go(7)
    nnoremap <Leader>8  <Plug>lightline#bufferline#go(8)
    nnoremap <Leader>9  <Plug>lightline#bufferline#go(9)
    nnoremap <Leader>0  <Plug>lightline#bufferline#go(10)
    nnoremap <Leader>d1 <Plug>lightline#bufferline#delete(1)
    nnoremap <Leader>d2 <Plug>lightline#bufferline#delete(2)
    nnoremap <Leader>d3 <Plug>lightline#bufferline#delete(3)
    nnoremap <Leader>d4 <Plug>lightline#bufferline#delete(4)
    nnoremap <Leader>d5 <Plug>lightline#bufferline#delete(5)
    nnoremap <Leader>d6 <Plug>lightline#bufferline#delete(6)
    nnoremap <Leader>d7 <Plug>lightline#bufferline#delete(7)
    nnoremap <Leader>d8 <Plug>lightline#bufferline#delete(8)
    nnoremap <Leader>d9 <Plug>lightline#bufferline#delete(9)
    nnoremap <Leader>d0 <Plug>lightline#bufferline#delete(10)
endif
