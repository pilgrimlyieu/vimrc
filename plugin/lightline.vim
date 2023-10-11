let g:lightline = {
\ 'colorscheme': 'gruvbox',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename' ] ],
\   'right': [ [ 'lineinfo' ],
\              [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
\              [ 'fileformat', 'fileencoding', 'filetype'] ]
\ },
\ 'tabline': {
\   'left'  : [ ['buffers'] ],
\   'right' : [ ],
\ },
\ 'component_expand': {
\   'buffers'        : 'lightline#bufferline#buffers',
\   'linter_checking': 'lightline#ale#checking',
\   'linter_infos'   : 'lightline#ale#infos',
\   'linter_warnings': 'lightline#ale#warnings',
\   'linter_errors'  : 'lightline#ale#errors',
\   'linter_ok'      : 'lightline#ale#ok',
\ },
\ 'component_type': {
\   'buffers'        : 'tabsel',
\   'linter_warnings': 'warning',
\   'linter_errors'  : 'error',
\   'linter_ok'      : 'ale',
\ },
\ 'component_function': {
\   'gitbranch': 'lightlinefunc#GitBranch',
\   'lineinfo' : 'lightlinefunc#LineInfo',
\ },
\ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
\ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
\}

let g:viewplugins = 'NERD_tree\|\[Plugins\]\|\[coc-explorer\]'

let s:palette = g:lightline#colorscheme#gruvbox#palette
let s:palette.tabline.middle = [['#282C34', '#3c3836', 235, 243]]
let s:palette.tabline.ale = [['#282C34', '#92A4A4', 0, 21]]

let g:lightline#ale#indicator_checking     = '⏳'
let g:lightline#ale#indicator_infos        = '📜'
let g:lightline#ale#indicator_errors       = '💥'
let g:lightline#ale#indicator_warnings     = '⚡'
let g:lightline#ale#indicator_ok           = '✨'
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
