function! biterm#RunProgram()
    if &filetype == ''
        return
    endif

    silent execute 'w'
    let l:filename = expand('%')
    let l:opts     = g:terminal_settings

    if &filetype == 'python'
        let l:term_col = biterm#Open()
        let l:opts.term_name = 'python_terminal'
        if l:term_col
            let l:opts.term_cols = l:term_col
        endif
        call term_start('python "' . l:filename . '"', l:opts)
    elseif &filetype == 'javascript'
        let l:term_col = biterm#Open()
        let l:opts.term_name = 'javascript_terminal'
        if l:term_col
            let l:opts.term_cols = l:term_col
        endif
        call term_start('node "'. l:filename . '"', l:opts)
    elseif &filetype == 'autohotkey'
        let l:autohotkey_ux_path = 'C:/Program Files/AutoHotkey/UX/'
        silent execute '!start "' . l:autohotkey_ux_path . 'AutoHotkeyUX.exe" "' . l:autohotkey_ux_path . 'launcher.ahk" /restart "%:p"'
    elseif &filetype == 'markdown'
        silent execute 'CocCommand markdown-preview-enhanced.openPreviewBackground'
        if &term =~ 'xterm'
            silent execute '!"/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe" --app="http://localhost:15567/webview/markdown-preview-enhanced"'
            silent execute 'redraw!'
        else
            silent execute '!"C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe" --app="http://localhost:15567/webview/markdown-preview-enhanced"'
        endif
    elseif &filetype == 'dosbatch'
        silent !%
    else
        let l:term_col = biterm#Open()
        let l:opts.term_name = 'Terminal'
        if l:term_col
            let l:opts.term_cols = l:term_col
        endif
        call term_start('cmd', l:opts)
    endif
endfunction

function! biterm#Open()
    let l:windowsWithTerminal = filter(range(1, winnr('$')), 'getwinvar(v:val, "&buftype") ==# "terminal" || term_getstatus(winbufnr(v:val))')
    if !empty(l:windowsWithTerminal)
        silent execute l:windowsWithTerminal[0] . 'wincmd w'
        let l:current_col = winwidth(l:windowsWithTerminal[0])
        call biterm#Close()
        return l:current_col
    endif
endfunction

function! biterm#Close()
    let l:winnumber = winnr()
    if getwinvar(l:winnumber, "&buftype") ==# "terminal" || term_getstatus(winbufnr(l:winnumber))
        silent execute winbufnr(l:winnumber) . 'bw!'
    else
        silent execute 'q!'
    endif
endfunction
