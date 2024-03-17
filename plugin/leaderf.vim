if !g:plugins_loaded_status.leaderf
    finish
endif

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
let g:Lf_WindowPosition   = 'popup' " Use <leader>pt to switch between 'popup' & 'bottom' to avoid 'Replace can not be used in popout window' issue
let g:Lf_PreviewInPopup   = 1

" noremap <unique><leader>p   <Nop>
nnoremap <silent><leader>pp <Cmd>LeaderfSelf<Cr>
nnoremap <silent><leader>pl <Cmd>LeaderfLine<Cr>
nnoremap <silent><leader>pf <Cmd>LeaderfFile<Cr>
nnoremap <leader>pr         <Plug>LeaderfRgPrompt
nnoremap <silent><leader>pt <Cmd>let g:Lf_WindowPosition = (g:Lf_WindowPosition == 'popup' ? 'bottom' : 'popup') \| echo 'g:Lf_WindowPosition has been switched to "' . g:Lf_WindowPosition . '".'<Cr>
