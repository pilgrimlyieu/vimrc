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

set undodir=D:\Temp\vim\.undo\
set directory=D:\Temp\vim\.swap\
set viewdir=D:\Temp\vim\.view\

set shortmess+=F
set background=dark
set listchars=tab:!>,trail:·,lead:·
set list
set gdefault
set pythonthreedll=D:\Software\Python\Python310\python310.dll
set titlestring=%{mode()}\&%{v:servername}

let $LANG = 'en_US.UTF-8'

filetype plugin indent on
syntax enable

let g:python3_host_skip_check = 1
let g:python3_host_prog       = '/usr/local/bin/python3'
