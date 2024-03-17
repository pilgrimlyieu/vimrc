if !g:plugins_loaded_status.autoformat
    finish
endif

noremap <silent><F3> <Cmd>Autoformat<Cr>
" npm install -g js-beautify
