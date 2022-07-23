" Set {{{1
set nocompatible
set fileformat=unix
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set nobomb
set mouse=
set magic
set smartcase
set laststatus=2
set showtabline=2
set history=256
set autochdir
set whichwrap=b,s,<,>,[,]
set backspace=indent,eol,start
set clipboard+=unnamed
set winaltkeys=no
set langmenu=zh_CN
set cursorline
set hlsearch
set number
set relativenumber
set splitbelow
set splitright
set guioptions-=e
set guioptions-=m
set guioptions-=b
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=t
set guioptions-=T
set guioptions-=g
set autoindent
set smartindent
set foldmethod=marker
set guifont=JetBrains_Mono:h15
set guifontwide=Microsoft_Yahei_Mono:h15
set conceallevel=2
set wildmenu
set scrolloff=9
set noshowmode
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set viewoptions-=options
set undofile
set undodir=D:\.vim\.undo\
set directory=D:\.vim\.swap\
set shortmess+=F
set background=dark
set listchars=tab:▸-,trail:·,lead:·
set list
" }}}

" WindowsTerminal {{{1
if &term == 'win32'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
        set termguicolors
    endif
    let &t_SI .= "\e[5 q"
    let &t_SR .= "\e[3 q"
    let &t_EI .= "\e[0 q"
    autocmd VimEnter * silent !echo -ne "\e[0 q"
    autocmd VimLeave * silent !echo -ne "\e[5 q"
endif
" }}}1

augroup auto_view
" auto_view {{{1
    autocmd!
    autocmd BufWinLeave *.*    silent mkview
    autocmd BufWinEnter *.*    silent loadview
    autocmd BufWinLeave _vimrc silent mkview
    autocmd BufWinEnter _vimrc silent loadview
" }}}1
augroup end

augroup spell_check
" spell_check {{{1
    autocmd!
    autocmd FileType tex,markdown,gitcommit setlocal spell spelllang=en_us,cjk
    autocmd FileType tex,markdown,gitcommit inoremap <silent><C-n> <C-g>u<Esc>[s1z=`'a<C-g>u
" }}}1
augroup end

" win-clipboard {{{1
let g:clipboard = {
\ 'name': 'win32yank',
\ 'copy': {
\ '+': 'win32yank.exe -i --crlf',
\ '*': 'win32yank.exe -i --crlf',
\ },
\ 'paste': {
\ '+': 'win32yank.exe -o --lf',
\ '*': 'win32yank.exe -o --lf',
\ },
\ 'cache_enabled': 0,
\ }
" }}}1

filetype plugin indent on
syntax enable

let g:language_types = ['python', 'javascript', 'vim', 'autohotkey']
call plug#begin("~/vimfiles/plugged")
" Plug {{{1
" Plug 'gruvbox-community/gruvbox'
Plug 'morhetz/gruvbox'
Plug 'yianwillis/vimcdoc'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'maximbaz/lightline-ale',        { 'for': g:language_types }
Plug 'mhinz/vim-startify'
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
Plug 'mg979/vim-visual-multi'
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
Plug 'lervag/vimtex',                 { 'for': ['tex', 'markdown'] }
Plug 'pilgrimlyieu/md-img-paste.vim', { 'for': 'markdown' }
Plug 'mzlogin/vim-markdown-toc',      { 'for': 'markdown'}
Plug 'python-mode/python-mode',       { 'for': 'python', 'branch': 'develop' }
" }}}1
call plug#end()

colorscheme gruvbox

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                         Key Mappings                                         "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Key Mappings {{{1
let g:mapleader = ","

noremap  <Up>    <Nop>
noremap  <Down>  <Nop>
noremap  <Left>  <Nop>
noremap  <Right> <Nop>
inoremap <Up>    <Nop>
inoremap <Down>  <Nop>
inoremap <Left>  <Nop>
inoremap <Right> <Nop>
nnoremap <Esc>   <Nop>
inoremap <Esc>   <Nop>

inoremap jk      <Esc>
inoremap kj      <Esc>
nnoremap <expr>0 col('.') == 1 ? '^': '0'
nmap     H       0
nnoremap L       $
nnoremap U       <C-r>
nnoremap ;       :
nnoremap :       ;

noremap  <silent><leader>/ :noh<Cr>

nnoremap <C-j>   <C-W>j
nnoremap <C-k>   <C-W>k
nnoremap <C-h>   <C-W>h
nnoremap <C-l>   <C-W>l
inoremap <C-j>   <C-o><C-W>j<Esc>
inoremap <C-k>   <C-o><C-W>k<Esc>
inoremap <C-h>   <C-o><C-W>h<Esc>
inoremap <C-l>   <C-o><C-W>l<Esc>
nnoremap <C-S-j> <C-W>-
nnoremap <C-S-k> <C-W>+
nnoremap <C-S-h> <C-W><
nnoremap <C-S-l> <C-W>>

nnoremap k  gk
nnoremap gk k
nnoremap j  gj
nnoremap gj j

inoremap <silent><leader>w       <C-O>:w<Cr>
inoremap <silent><leader>q       <C-O>ZZ
inoremap <silent><leader>c       <C-O>:bw<Cr>
inoremap <silent><leader>Q       <C-O>ZQ
nnoremap <silent><leader>w       :w<Cr>
nnoremap <silent><leader>q       ZZ
nnoremap <silent><leader>c       :bw<Cr>
nnoremap <silent><leader>Q       ZQ
nnoremap <silent><leader><S-Esc> <C-O>:qa!<Cr>

tnoremap <F1>           <C-W>N
tnoremap <S-F1>         <C-W><C-C>
tnoremap <silent><S-F5> <C-W>N:bw!<Cr>
nnoremap <silent><S-F5> :call CloseTerminal()<CR>

noremap  <S-q>             <Nop>
inoremap <S-q>             <Nop>
noremap  <ScrollWheelUp>   <nop>
noremap  <ScrollWheelDown> <nop>
inoremap <ScrollWheelUp>   <nop>
inoremap <ScrollWheelDown> <nop>
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                         vim-surround                                         "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Custom Surroundings {{{1
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
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                           Markdown                                           "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Markdown {{{1
autocmd FileType markdown inoremap <silent><C-x> <Cr><Cr><hr class='section'><Cr><Cr>
autocmd FileType markdown let b:coc_pairs_disabled = ["'"]
autocmd FileType markdown inoremap <silent><leader>mo <C-o>:GenTocGFM<Cr>
autocmd FileType markdown nnoremap <silent><leader>mo <C-o>:GenTocGFM<Cr>
autocmd FileType markdown inoremap <silent><leader>mt <C-o>:UpdateToc<Cr>
autocmd FileType markdown nnoremap <silent><leader>mt <C-o>:UpdateToc<Cr>
autocmd FileType markdown vnoremap <silent><leader>vl :EasyAlign */\\\@<!<Bar>/<Cr>
autocmd FileType markdown vnoremap <silent><leader>vr :EasyAlign */\\\@<!<Bar>/ar<Cr>
autocmd FileType markdown vnoremap <silent><leader>vv :EasyAlign */\\\@<!<Bar>/ac<Cr>
autocmd FileType markdown nmap     <silent><leader>vl gaip*<C-x>\\\@<!<Bar><Cr>
autocmd FileType markdown nmap     <silent><leader>vr gaip*<C-a><Bs>r<Cr><C-x>\\\@<!<Bar><Cr>
autocmd FileType markdown nmap     <silent><leader>vv gaip*<C-a><Bs>c<Cr><C-x>\\\@<!<Bar><Cr>

let g:vmt_auto_update_on_save = 0
let g:vmt_fence_text          = 'TOC Start'
let g:vmt_fence_closing_text  = 'TOC End'
let g:vmt_list_item_char      = '-'
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                         md-img-paste                                         "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Markdown Image Paste {{{1
autocmd FileType markdown inoremap <buffer><silent><leader>p <C-o>:call mdip#MarkdownClipboardImage()<CR>

let g:mdip_imgdir  = 'images'
let g:mdip_imgname = ''
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                            VimTeX                                            "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" TeX {{{1
let g:tex_conceal = ''

" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
" let g:vimtex_view_method = 'SumatraPDF'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'SumatraPDF' 

" SumatraPDF Setting
" gvim --servername GVIM --remote-send "<C-\><C-n>:drop %f<CR>:%l<CR>:normal! zzzv<CR>:execute 'drop ' . fnameescape('%f')<CR>:%l<CR>:normal! zzzv<CR>:call remote_foreground('GVIM')<CR><CR>"

let g:vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexmk'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","

let g:tex_flavor = "latex"

let g:vimtex_texcount_custom_arg = " -ch -total"

autocmd FileType tex noremap <buffer> <silent> <leader>lw :VimtexCountWords! <CR><CR>

let g:Tex_ViewRule_pdf = 'D:\Program Files\SumatraPDF\SumatraPDF.exe -reuse-instance -inverse-search "gvim -c \":RemoteOpen +\%l \%f\""'

let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-pdf',
    \ 'pdflatex'         : '-pdf',
    \ 'dvipdfex'         : '-pdfdvi',
    \ 'lualatex'         : '-lualatex',
    \ 'xelatex'          : '-xelatex',
    \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
    \ 'context (luatex)' : '-pdf -pdflatex=context',
    \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
    \}

let g:vimtex_compiler_latexmk = {
    \ 'build_dir'  : {-> 'out'},
    \ 'callback'   : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks'      : [],
    \ 'options'    : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-shell-escape',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

let g:vimtex_syntax_conceal_disable   = 1
let g:vimtex_quickfix_open_on_warning = 0

augroup vimtex_config
  autocmd!
  autocmd User VimtexEventQuit call vimtex#compiler#clean(0)
augroup end
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                           UltiSnip                                           "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" UltiSnips {{{1
autocmd FileType snippets nnoremap <C-s> ggOclearsnippets<Cr><Esc>

let g:UltiSnipsExpandTrigger       = 'ô'
let g:UltiSnipsListSnippets        = '<C-Tab>'
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
let g:UltiSnipsEditSplit           = "vertical"
let g:UltiSnipsSnippetDirectories  = ['Snips']
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                          easymotion                                          "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Easy Motion {{{1
let g:EasyMotion_enter_jump_first = 1

nnoremap <leader>j         <Plug>(easymotion-j)
nnoremap <leader>k         <Plug>(easymotion-k)
nnoremap <leader>h         <Plug>(easymotion-linebackward)
nnoremap <leader>l         <Plug>(easymotion-lineforward)
nnoremap <leader>.         <Plug>(easymotion-repeat)
nnoremap <leader>f         <Plug>(easymotion-f)
nnoremap <leader>F         <Plug>(easymotion-F)
nnoremap <leader>t         <Plug>(easymotion-t)
nnoremap <leader>T         <Plug>(easymotion-T)
nnoremap <leader><leader>f <Plug>(easymotion-f2)
nnoremap <leader><leader>F <Plug>(easymotion-F2)
nnoremap <leader><leader>t <Plug>(easymotion-t2)
nnoremap <leader><leader>T <Plug>(easymotion-T2)
nnoremap <leader>s         <Plug>(easymotion-s)
nnoremap <leader>S         <Plug>(easymotion-s2)
nnoremap /                 <Plug>(easymotion-sn)
onoremap /                 <Plug>(easymotion-tn)
nnoremap n                 <Plug>(easymotion-next)
nnoremap N                 <Plug>(easymotion-prev)
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                       vim-visual-multi                                       "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-visual-multi {{{1
let g:VM_maps                    = {}
let g:VM_maps["Exit"]            = '<C-c>'
let g:VM_maps["Add Cursor Down"] = '<A-s>'
let g:VM_maps["Add Cursor Up"]   = '<A-w>'
let g:VM_maps["Select l"]        = '<A-d>'
let g:VM_maps["Select h"]        = '<A-a>'
let g:VM_maps["Move Left"]       = '<A-S-a>'
let g:VM_maps["Move Right"]      = '<A-S-d>'
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                           LeaderF                                            "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" LeaderF {{{1
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_RootMarkers          = ['.git', '.root']
let g:Lf_DefaultExternalTool  = 'rg'
let g:Lf_PreviewResult        = {
            \ 'File'        : 0,
            \ 'Buffer'      : 0,
            \ 'Mru'         : 0,
            \ 'Tag'         : 0,
            \ 'BufTag'      : 1,
            \ 'Function'    : 1,
            \ 'Line'        : 0,
            \ 'Colorscheme' : 0,
            \ 'Rg'          : 1,
            \ 'Gtags'       : 0
            \}
let g:Lf_StlColorscheme   = 'gruvbox_material'
let g:Lf_PopupColorscheme = 'gruvbox_material'
let g:Lf_WindowPosition   = 'popup'
let g:Lf_PreviewInPopup   = 1

noremap <unique><leader>p   <Nop>
noremap <silent><leader>pp  :LeaderfSelf<Cr>
noremap <silent><leader>pl  :LeaderfLine<Cr>
noremap <silent><leader>pf  :LeaderfFile<Cr>
noremap <unique><leader>pr  <Plug>LeaderfRgPrompt
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                        vim-easy-align                                        "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-easy-align {{{1
nnoremap ga <Plug>(EasyAlign)
xnoremap ga <Plug>(EasyAlign)
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                             ale                                              "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ale {{{1
let g:ale_sign_error   = '>>'
let g:ale_sign_warning = '--'
let g:ale_linters      = {
\   'python': ['pylint'],
\}
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                             coc                                              "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" coc {{{1
let g:coc_global_extensions = [
        \ 'coc-json',
        \ 'coc-webview',
        \ 'coc-markdown-preview-enhanced',
        \ 'coc-git',
        \ 'coc-highlight',
        \ 'coc-html',
        \ 'coc-pyright',
        \ 'coc-snippets',
        \ 'coc-ltex',
        \ 'coc-pairs',
        \ 'coc-tsserver',
        \ 'coc-vimlsp',
        \ 'coc-lists',
        \]

let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" Git Config
" [coc-git]
"     issuesources = github/pilgrimlyieu/School-Note,github/pilgrimlyieu/vimrc,github/pilgrimlyieu/Snippets,github/pilgrimlyieu/Snippets-Dependencies,github/pilgrimlyieu/AutoHotkey-Script,github/pilgrimlyieu/Python-Script

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
" Recently vim can merge signcolumn and number column into one
set signcolumn=number

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <C-z>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<C-z>" :
      \ coc#refresh()
inoremap <expr><C-S-z> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <C-c> pumvisible() ? coc#_select_confirm()
                             \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typEscript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
" nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" xmap if <Plug>(coc-funcobj-i)
" omap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
" nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
nnoremap <silent><nowait> <space>l  :<C-u>CocList<CR>
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                           NerdTree                                           "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NerdTree {{{1
nnoremap <silent>T :NERDTree<CR>
let g:NERDTreeWinSize                                           = 36
let g:webdevicons_conceal_nerdtree_brackets                     = 1
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile  = 1
let g:NERDTreeGitStatusIndicatorMapCustom                       = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                            Python                                            "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Python {{{1
nnoremap <silent><F5> :call RunProgram()<CR>
inoremap <silent><F5> <C-O>:call RunProgram()<CR>

autocmd FileType python,javascript nnoremap <silent><leader>Q :call CloseTerminal()<CR>

let g:python3_host_skip_check = 1
let g:python3_host_prog       = '/usr/local/bin/python3'
let g:support_f5_filetypes    = ['python', 'javascript', 'autohotkey', 'markdown']
let g:terminal_settings       = {'vertical': 1}

highlight default link Terminal Normal

function! RunProgram()
    if index(g:support_f5_filetypes, &filetype) >= 0
        execute 'silent execute "w"'
        let l:filename = expand('%')
        let l:opts     = g:terminal_settings

        if &filetype == 'python'
            call OpenTerminal()
            let l:opts.term_name = 'python_terminal'
            call term_start('python ' . l:filename, l:opts)
        elseif &filetype == 'javascript'
            call OpenTerminal()
            let l:opts.term_name = 'javascript_terminal'
            call term_start('node '. l:filename, l:opts)
        elseif &filetype == 'autohotkey'
            execute 'silent execute "!start \"D:/Program Files/AutoHotkey/autohotkey.exe\" /restart /CP65001 %:p"'
        elseif &filetype == 'markdown'
            execute 'silent execute "CocCommand markdown-preview-enhanced.openPreview"'
        endif

    endif
endfunction

function! OpenTerminal()
    let l:windowsWithTerminal = filter(range(1, winnr('$')), 'getwinvar(v:val, "&buftype") ==# "terminal" || term_getstatus(winbufnr(v:val))')
    if !empty(l:windowsWithTerminal)
        execute 'silent execute "' . l:windowsWithTerminal[0] . 'wincmd w"'
        call CloseTerminal()
    endif
endfunction

function! CloseTerminal()
    let l:winnumber = winnr()
    if getwinvar(l:winnumber, "&buftype") ==# "terminal" || term_getstatus(winbufnr(l:winnumber))
        execute 'silent execute "' . winbufnr(l:winnumber) . 'bw!"'
    else
        execute 'silent execute "q!"'
    endif
endfunction
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                          lightline                                           "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" lightLine {{{1
let g:lightline = {
\ 'colorscheme': 'gruvbox',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename' ] ],
\   'right': [ [ 'lineinfo' ],
\              [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
\              [ 'fileformat', 'fileencoding', 'filetype'] ]
\ },
\ 'tabline': {
\   'left'  : [ ['buffers'] ],
\   'right' : [ ['close'] ]
\ },
\ 'component_expand': {
\   'buffers'         : 'lightline#bufferline#buffers',
\   'linter_checking' : 'lightline#ale#checking',
\   'linter_infos'    : 'lightline#ale#infos',
\   'linter_warnings' : 'lightline#ale#warnings',
\   'linter_errors'   : 'lightline#ale#errors',
\   'linter_ok'       : 'lightline#ale#ok',
\ },
\ 'component_type': {
\   'buffers'         : 'tabsel',
\   'linter_warnings' : 'warning',
\   'linter_errors'   : 'error',
\   'linter_ok'       : 'ale',
\ },
\ 'component_function': {
\   'gitbranch' : 'LightLineGitBranch',
\   'lineinfo'  : 'LightLineLineInfo',
\ },
\ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
\ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
\}

function! LightLineGitBranch() 
    return "\uE0A0" . (exists('*FugitiveHead') ? " " . FugitiveHead() : "")
endfunction

let g:viewplugins = 'NERD_tree\|\[Plugins\]\|\[coc-explorer\]'

function! LightLineLineInfo()
  return expand('%:t') =~# g:viewplugins ? '' : printf(' %d/%d | %d/%d', line('.'), line('$'), col('.'), col('$'))
endfunction

let s:palette = g:lightline#colorscheme#gruvbox#palette
let s:palette.tabline.ale = [['#282C34', '#92A4A4', 0, 21]]

let g:lightline#ale#indicator_checking     = '⏳'
let g:lightline#ale#indicator_infos        = '📜'
let g:lightline#ale#indicator_errors       = '💥'
let g:lightline#ale#indicator_warnings     = '⚡'
let g:lightline#ale#indicator_ok           = '✨'
let g:lightline#bufferline#show_number     = 2
let g:lightline#bufferline#unicode_symbols = 1

nnoremap <Leader>1  <Plug>lightline#bufferline#go(1)
nnoremap <Leader>2  <Plug>lightline#bufferline#go(2)
nnoremap <Leader>3  <Plug>lightline#bufferline#go(3)
nnoremap <Leader>4  <Plug>lightline#bufferline#go(4)
nnoremap <Leader>5  <Plug>lightline#bufferline#go(5)
nnoremap <Leader>6  <Plug>lightline#bufferline#go(6)
nnoremap <Leader>7  <Plug>lightline#bufferline#go(7)
nnoremap <Leader>8  <Plug>lightline#bufferline#go(8)
nnoremap <Leader>9  <Plug>lightline#bufferline#go(9)
nnoremap <Leader>0  <Plug>lightline#bufferline#go(10)
nnoremap <Leader>d1 <Plug>lightline#bufferline#delete(1)
nnoremap <Leader>d2 <Plug>lightline#bufferline#delete(2)
nnoremap <Leader>d3 <Plug>lightline#bufferline#delete(3)
nnoremap <Leader>d4 <Plug>lightline#bufferline#delete(4)
nnoremap <Leader>d5 <Plug>lightline#bufferline#delete(5)
nnoremap <Leader>d6 <Plug>lightline#bufferline#delete(6)
nnoremap <Leader>d7 <Plug>lightline#bufferline#delete(7)
nnoremap <Leader>d8 <Plug>lightline#bufferline#delete(8)
nnoremap <Leader>d9 <Plug>lightline#bufferline#delete(9)
nnoremap <Leader>d0 <Plug>lightline#bufferline#delete(10)
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                           Rainbow                                            "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Rainbow {{{1
let g:rainbow_active = 1
let g:rainbow_conf = {
\    'guifgs': ['#858580', '#8FBCBB', '#D08770', '#A3BE8C', '#EBCB8B', '#B48EAD', '#80a880', '#887070'],
\    'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\    'operators': '_,_',
\    'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\    'separately': {
\        '*': {},
\        'markdown': {
\              'parentheses_options': 'containedin=markdownCode contained',
\        },
\        'tex': {
\            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\        },
\        'lisp': {
\            'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\        },
\        'vim': {
\            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\        },
\        'html': {
\            'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\        },
\        'css': 0,
\    }
\}
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                         Indent Line                                          "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Indent Line {{{1
let g:indentLine_fileTypeExclude = ['json', 'markdown']
let g:indentLine_conceallevel    = 2
let g:indentLine_concealcursor   = ''
let g:indentLine_setConceal      = 0
let g:indentLine_enabled         = 1
let g:indent_guides_guide_size   = 1
let g:indent_guides_start_level  = 1
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                           fugitive                                           "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" fugitive {{{1
nnoremap <silent>mm :G<Cr>
autocmd FileType fugitive nnoremap <silent>mp :G push<Cr>
autocmd FileType fugitive nnoremap <silent>mq :G pull<Cr>
autocmd FileType fugitive nnoremap <silent>mus :G submodule update --remote<Cr>
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                              "
"                                            Tabout                                            "
"                                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://stackoverflow.com/questions/20038550/step-over-bracket-parenthesis-etc-with-tab-in-vim

" Tabout {{{1
inoremap <silent><End>   <C-r>=IncreaseColNumber()<CR>
inoremap <silent><S-End> <C-r>=DecreaseColNumber()<CR>

let s:delimiters_exp = '[\[\]{}()$&"' . "'" . '<>]'

function! IncreaseColNumber()
    let l:line = getline('.')
    if l:line[col('.') - 1] =~# s:delimiters_exp
        return "\<Right>"
    endif
endfunction

function! DecreaseColNumber()
    let l:line = getline('.')
    if l:line[col('.') - 2] =~# s:delimiters_exp
        return "\<Left>"
    endif
endfunction
" }}}1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
