set nocompatible
set fileformat=unix
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set nobomb
set magic
set smartcase
set laststatus=2
set showtabline=2
set history=1024
set autochdir
set whichwrap=b,<,>,[,]
set backspace=indent,eol,start
set clipboard+=unnamed
set winaltkeys=no
set langmenu=zh_CN
set cursorline
set hlsearch
set incsearch
set number
set relativenumber
set wrap
set linebreak

set splitbelow
set splitright

set autoindent
set smartindent
set foldmethod=marker
set conceallevel=2
set wildmenu
set scrolloff=10
set noshowmode
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set viewoptions-=options

set undofile
if &term =~ "xterm"
    set undodir=~/.vim/temp/undo
    set directory=~/.vim/temp/swap
    set viewdir=~/.vim/temp/view
else
    set undodir=D:\Temp\vim\.undo\
    set directory=D:\Temp\vim\.swap\
    set viewdir=D:\Temp\vim\.view\
endif

set shortmess+=F
set background=dark
set listchars=tab:!>,trail:·,lead:·
set list
set gdefault
if &term !~ "xterm"
    set pythonthreedll=D:\Software\Python\Python310\python310.dll
endif
set title
set titlestring=%{mode()}🏷️%t✏️

filetype plugin indent on
syntax enable
highlight default link Terminal Normal

augroup auto_view
    autocmd!
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent loadview
augroup end

let $LANG = 'en_US.UTF-8'
let g:terminal_settings = { 'vertical': 1, 'term_cols': 60 }

let g:clipboard = {
          \   'name': 'win32yank',
          \   'copy': {
          \      '+': 'win32yank.exe -i --crlf',
          \      '*': 'win32yank.exe -i --crlf',
          \    },
          \   'paste': {
          \      '+': 'win32yank.exe -o --lf',
          \      '*': 'win32yank.exe -o --lf',
          \   },
          \   'cache_enabled': 0,
          \ }
