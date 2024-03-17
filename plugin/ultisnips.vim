if !g:plugins_loaded_status.ultisnips
    finish
endif

let g:ulti_expand_or_jump_res = 0
function! Ulti_JumpOrExpand_and_getRes()
  call UltiSnips#ExpandSnippetOrJump()
  return g:ulti_expand_or_jump_res
endfunction

if &term =~ "xterm"
    let g:UltiSnipsSnippetDirectories  = ["~/.vim/Snips"]
else
    let g:UltiSnipsSnippetDirectories  = [$HOME . "/vimfiles/Snips"]
endif
let g:UltiSnipsEditSplit           = "vertical"
let g:UltiSnipsListSnippets        = "<C-S-A-F12>"
let g:UltiSnipsExpandTrigger       = "<A-F12>"
let g:UltiSnipsJumpBackwardTrigger = "<A-S-F12>"

inoremap <silent><A-F12>   <Cmd>exec (Ulti_JumpOrExpand_and_getRes() > 0) ? "" : endout#IncreaseColNumber()<Cr>
snoremap <silent><A-F12>   <Cmd>call UltiSnips#JumpForwards()<Cr>
inoremap <silent><C-A-F12> <Cmd>call UltiSnips#JumpForwards()<Cr>
snoremap <silent><C-A-F12> <Cmd>call UltiSnips#JumpForwards()<Cr>
nnoremap <silent><C-S-A-d> <Cmd>call UltiSnips#RefreshSnippets()<Cr>
