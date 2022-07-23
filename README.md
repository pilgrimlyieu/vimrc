# vimrc

- AUTHOR: **PilgrimLyieu**
- OS: **Windows 10**
- VIM: **Vim 90**

---

<!-- TOC Start GFM -->

- [Usage](#usage)
- [Structure](#structure)
    - [\_vimrc](#_vimrc)
    - [coc-settings.json](#coc-settingsjson)
    - [after](#after)
        - [syntax](#syntax)
            - [markdown.vim](#markdownvim)
    - [extra](#extra)
        - [.mume](#mume)
    - [ftplugin](#ftplugin)
            - [autohotkey.vim](#autohotkeyvim)
    - [plugged](#plugged)
        - [vimtex/after/ftplugin](#vimtexafterftplugin)
            - [markdown.vim](#markdownvim-1)
    - [pythonx](#pythonx)
    - [Snips](#snips)
    - [spell](#spell)

<!-- TOC End -->

---

## Usage

Put `_vimrc` into `~` and others into `~/vimfiles`. Anything else not shown in the above structure such as `.gitmodules` is unnecessary to do so.

## Structure

<!-- `tree >structure.txt` -->

<!-- Files Structure{{{1 -->
```
├─_vimrc
├─coc-settings.json
├─after
│  └─syntax
├─extra
│  └─.mume
├─ftplugin
├─plugged
│  └─vimtex
│      └─after
│          └─ftplugin
├─pythonx
│  ├─md
│  └─mdtex
├─Snips
│  ├─all
│  ├─markdown
│  ├─python
│  ├─snippets
│  └─vim
└─spell
```
<!-- }}}1 -->

### \_vimrc

Main **Vim** config.

### coc-settings.json

Main `coc` config.

### after

<!-- Files Structure -->
```
├─syntax
```

#### syntax

##### markdown.vim

Apply *Math Environment* to `Markdown`.

### extra

<!-- Files Structure -->
```
├─.mume
```

#### .mume

Preview configs of `coc-markdown-preview-enhanced`.

### ftplugin

##### autohotkey.vim

Set `AutoHotkey` comment method.

### plugged

#### vimtex/after/ftplugin

##### markdown.vim

Apply text objects & mappings of `vimtex` to `Markdown`.

### pythonx

`UltiSnips` python modules.

### Snips

`UltiSnips` snippets

### spell

Correct spellings.
