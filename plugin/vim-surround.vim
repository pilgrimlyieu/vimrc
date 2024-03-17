if !g:plugins_loaded_status.surround
    finish
endif

let g:surround_{char2nr('（')} = "（\r）"
let g:surround_{char2nr('）')} = "（\r）"
let g:surround_{char2nr('【')} = "【\r】"
let g:surround_{char2nr('】')} = "【\r】"
let g:surround_{char2nr('《')} = "《\r》"
let g:surround_{char2nr('》')} = "《\r》"
let g:surround_{char2nr('‘')}  = "「\r」"
let g:surround_{char2nr('’')}  = "「\r」"
let g:surround_{char2nr('“')}  = "『\r』"
let g:surround_{char2nr('”')}  = "『\r』"
let g:surround_{char2nr('「')} = "「\r」"
let g:surround_{char2nr('」')} = "「\r」"
let g:surround_{char2nr('『')} = "『\r』"
let g:surround_{char2nr('』')} = "『\r』"
