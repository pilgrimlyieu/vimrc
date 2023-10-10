augroup auto_view
" auto_view {{{1
    autocmd!
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent loadview
" }}}1
augroup end

augroup spell_check
" spell_check {{{1
    autocmd!
    autocmd FileType tex,markdown,gitcommit setlocal spell spelllang=en_us,cjk
    autocmd FileType tex,markdown,gitcommit inoremap <silent><C-n> <C-g>u<Esc>[s1z=`'a<C-g>u
" }}}1
augroup end
