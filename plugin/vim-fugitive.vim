nnoremap <silent>mm <Cmd>G<Cr>

autocmd FileType fugitive nnoremap <silent>mp  <Cmd>G push<Cr>
autocmd FileType fugitive nnoremap <silent>mq  <Cmd>G pull<Cr>
autocmd FileType fugitive nnoremap <silent>mus <Cmd>G submodule update --remote<Cr>
