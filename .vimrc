if &term =~ "xterm"
    source ~/.vim/config/settings.vim
    source ~/.vim/config/plugin.vim
    source ~/.vim/config/scheme.vim
else
    source ~/vimfiles/config/settings.vim
    source ~/vimfiles/config/plugin.vim
    source ~/vimfiles/config/scheme.vim
endif
