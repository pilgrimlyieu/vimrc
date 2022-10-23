if exists('b:current_syntax')
  unlet b:current_syntax
endif

syntax include @tex syntax/tex.vim
syntax region markdownMath start="\\\@<!\$" end="\$" skip="\\\$" contains=@tex keepend
syntax region markdownMath start="\\\@<!\$\$" end="\$\$" skip="\\\$" contains=@tex keepend
syntax region markdownMath start="\\\@<!\\(" end="\\)" contains=@tex keepend
syntax region markdownMath start="\\\@<!\\\[" end="\\\]" contains=@tex keepend

let b:current_syntax = 'markdown'
