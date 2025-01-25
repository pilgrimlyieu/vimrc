set nocompatible
set fileformat=unix
set fileformats=unix,dos
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set nobomb
set magic
set smartcase
set laststatus=2
set showtabline=0
set history=1024
set autochdir
set whichwrap=b,<,>,[,]
set backspace=indent,eol,start
set clipboard^=unnamed,unnamedplus
set winaltkeys=no
set langmenu=zh_CN
set cursorline
set hlsearch
set incsearch
set number
set relativenumber
set wrap
set linebreak
set autoread
set smoothscroll
set guicursor=n-v-c:block-Cursor/lCursor-blinkwait700-blinkoff600-blinkon600,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor-blinkwait700-blinkoff600-blinkon600,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
set formatoptions+=mBj
" set selection=exclusive " Conflict with vim-visual-multi :(

set splitbelow
set splitright

set list
set listchars=tab:!>,trail:·,leadmultispace:¦···
autocmd OptionSet shiftwidth execute 'setlocal listchars=tab:!>,trail:·,leadmultispace:¦' . repeat('·', shiftwidth() - 1)

set autoindent
set smartindent
set breakindent
set showbreak=\ ↪
set foldmethod=marker
set conceallevel=2
set wildmenu
set scrolloff=10
set noshowmode
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set viewoptions+=unix,slash
set viewoptions-=options

set undofile
if &term =~ "xterm"
    set undodir=~/.vim/temp/undo//
    set directory=~/.vim/temp/swap//
    set viewdir=~/.vim/temp/view//
else
    set undodir=D:/Temp/vim/.undo//
    set directory=D:/Temp/vim/.swap//
    set viewdir=D:/Temp/vim/.view//
endif

set shortmess+=F
set background=dark

set gdefault

if &term !~ "xterm"
    set pythonthreedll=D:\Software\Python\python311.dll
endif

set title
set titlestring=%t✏️%{mode()}

filetype plugin indent on
syntax enable
highlight default link Terminal Normal

augroup auto_view
    autocmd!
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent loadview
augroup end

augroup auto_update_title
    autocmd!
    autocmd CmdlineEnter * redraw
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
