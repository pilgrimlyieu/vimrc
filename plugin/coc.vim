if !g:I_will_load_coc
    finish
endif

if &term =~ "xterm"
    let g:coc_data_home = '~/.vim/extra/coc'
else
    let g:coc_data_home = $USERPROFILE . '/vimfiles/extra/coc'
endif
let g:coc_global_extensions = [
        \ 'coc-explorer',
        \ 'coc-yank',
        \ 'coc-json',
        \ 'coc-css',
        \ 'coc-html',
        \ 'coc-webview',
        \ 'coc-markdown-preview-enhanced',
        \ 'coc-git',
        \ 'coc-highlight',
        \ 'coc-pyright',
        \ 'coc-pydocstring',
        \ 'coc-ltex',
        \ 'coc-pairs',
        \ 'coc-tsserver',
        \ 'coc-vimlsp',
        \ 'coc-lists',
        \ 'coc-vimtex',
        \ 'coc-copilot',
        \ 'coc-clangd',
        \ 'coc-cmake',
        \ 'coc-clang-format-style-options',
        \]

nnoremap <silent><leader>E <Cmd>CocCommand explorer<Cr>
nnoremap <silent><leader>y <Cmd>CocList -A --normal yank<Cr>

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=number

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <C-z>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<C-z>" :
      \ coc#refresh()
if has("gui_running")
    inoremap <silent><expr><C-S-z> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
else
    inoremap <silent><expr><Esc>[lyieu;z~ coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
endif

" Make <Cr> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <C-x> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<Cr>\<c-r>=coc#on_enter()\<Cr>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-@> coc#refresh()

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
nnoremap <silent> K <Cmd>call ShowDocumentation()<Cr>

function! ShowDocumentation()
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
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line.
" nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
" nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(1)\<Cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(0)\<Cr>" : "\<Left>"
" vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
" vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)

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
" nnoremap <silent><nowait> <space>a  <Cmd>CocList diagnostics<Cr>
" Manage extensions.
" nnoremap <silent><nowait> <space>e  <Cmd>CocList extensions<Cr>
" Show commands.
" nnoremap <silent><nowait> <space>c  <Cmd>CocList commands<Cr>
" Find symbol of current document.
" nnoremap <silent><nowait> <space>o  <Cmd>CocList outline<Cr>
" Search workspace symbols.
" nnoremap <silent><nowait> <space>s  <Cmd>CocList -I symbols<Cr>
" Do default action for next item.
" nnoremap <silent><nowait> <space>j  <Cmd>CocNext<Cr>
" Do default action for previous item.
" nnoremap <silent><nowait> <space>k  <Cmd>CocPrev<Cr>
" Resume latest coc list.
" nnoremap <silent><nowait> <space>p  <Cmd>CocListResume<Cr>
" nnoremap <silent><nowait> <space>l  <Cmd>CocList<Cr>
