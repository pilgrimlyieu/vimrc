let g:language_types = ['python', 'javascript', 'vim', 'autohotkey', 'c', 'cpp']
if &term !~ "xterm"
    call plug#begin("~/vimfiles/plugged")
    Plug 'gruvbox-community/gruvbox'
    Plug 'yianwillis/vimcdoc'
    Plug 'itchyny/lightline.vim'
    Plug 'mengelbrecht/lightline-bufferline'
    Plug 'maximbaz/lightline-ale',        { 'for': g:language_types }
    Plug 'junegunn/vim-easy-align'
    Plug 'neoclide/coc.nvim',             { 'branch': 'release' }
    Plug 'dense-analysis/ale',            { 'for': g:language_types }
    Plug 'SirVer/ultisnips'
    Plug 'Yggdroot/LeaderF'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-repeat'
    Plug 'pilgrimlyieu/vim-surround'
    Plug 'easymotion/vim-easymotion'
    Plug 'ZSaberLv0/vim-easymotion-chs'
    Plug 'mg979/vim-visual-multi'
    Plug 'luochen1990/rainbow'
    Plug 'Yggdroot/indentLine'
    Plug 'lervag/vimtex',                 { 'for': ['tex', 'markdown'] }
    Plug 'pilgrimlyieu/md-img-paste.vim', { 'for': 'markdown' }
    Plug 'mzlogin/vim-markdown-toc',      { 'for': 'markdown'}
    Plug 'rrethy/vim-hexokinase',         { 'do': 'make hexokinase' }
    Plug 'vim-autoformat/vim-autoformat'
    Plug 'github/copilot.vim'
    call plug#end()
else
    call plug#begin("~/.vim/plugged")
    Plug 'gruvbox-community/gruvbox'
    Plug 'yianwillis/vimcdoc'
    Plug 'itchyny/lightline.vim'
    Plug 'mengelbrecht/lightline-bufferline'
    Plug 'maximbaz/lightline-ale',        { 'for': g:language_types }
    Plug 'junegunn/vim-easy-align'
    Plug 'neoclide/coc.nvim',             { 'branch': 'release' }
    Plug 'dense-analysis/ale',            { 'for': g:language_types }
    Plug 'SirVer/ultisnips'
    Plug 'Yggdroot/LeaderF'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-repeat'
    Plug 'pilgrimlyieu/vim-surround'
    Plug 'easymotion/vim-easymotion'
    Plug 'ZSaberLv0/vim-easymotion-chs'
    Plug 'mg979/vim-visual-multi'
    Plug 'luochen1990/rainbow'
    Plug 'Yggdroot/indentLine'
    Plug 'lervag/vimtex',                 { 'for': ['tex', 'markdown'] }
    Plug 'github/copilot.vim'
    call plug#end()
endif
