function! lightlinefunc#GitBranch() 
    return "\uE0A0" . (exists('*FugitiveHead') ? " " . FugitiveHead() : "")
endfunction

function! lightlinefunc#LineInfo()
  return expand('%:t') =~# g:viewplugins ? '' : printf(' %d/%d | %d/%d', line('.'), line('$'), col('.'), col('$'))
endfunction

