" https://stackoverflow.com/questions/20038550/step-over-bracket-parenthesis-etc-with-tab-in-vim
let s:delimiters_exp = '[\[\]{}()$&"' . "'" . '<>]'

function! endout#IncreaseColNumber()
    let l:line = getline('.')
    if l:line[col('.') - 1] =~# s:delimiters_exp
        call cursor(line('.'), col('.') + 1)
    endif
    return ""
endfunction

function! endout#DecreaseColNumber()
    let l:line = getline('.')
    if l:line[col('.') - 2] =~# s:delimiters_exp
        call cursor(line('.'), col('.') - 1)
    endif
    return ""
endfunction
