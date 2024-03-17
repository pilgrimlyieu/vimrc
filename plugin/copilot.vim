if !g:plugins_loaded_status.copilot
    finish
endif

let g:copilot_filetypes = {
    \ 'gitcommit': v:true,
    \ 'markdown': v:true,
    \ 'snippets': v:true,
    \}
