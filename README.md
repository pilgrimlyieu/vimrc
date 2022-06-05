# vimrc

- AUTHOR: **PilgrimLyieu**
- OS: **Windows 10**
- VIM: **Vim 82**

---

- [Usage](#usage)
  - [How to apply `.diff` file?](#how-to-apply-diff-file)

---

## Usage

```
├─_vimrc
├─ftplugin
├─plugged
│  ├─md-img-paste.vim
│  │  └─plugin
│  └─vimtex
│      └─after
│          └─ftplugin
├─pythonx
└─Snips
    ├─markdown
    ├─python
    ├─snippets
    └─vim
```

Put `_vimrc` into `~` and others into `~/vimfiles`. Anything else not shown in the above structure such as `.gitmodules` is unnecessary to do so.

### How to apply `.diff` file?

Some files display as `.diff` type, which means you have to take some change instead of putting it into its folder directly.

For example [`plugged/md-img-paste.vim/plugin/mdip.vim.diff`](plugged/md-img-paste.vim/plugin/mdip.vim.diff).

Check the origin file shown in `.diff` file, in this example is `~/plugin/mdip.vim.diff`(In the third line).

https://github.com/pilgrimlyieu/vimrc/blob/23f2c937d9a0cb8ad9dea0bdc5c8f4428a38dcd5/plugged/md-img-paste.vim/plugin/mdip.vim.diff#L1-L4

Git bash in `~/plugged/md-img-paste.vim` and use command

```git
$ git apply <`mdip.vim.diff` position>
```

If I put `mdip.vim.diff` in `~/plugin`, the command is `git apply mdip.vim.diff`.

Besides, you can create a folder `%ANY%/plugin`, putting `mdip.vim` into it and Git bash `%ANY%` to execute the above command, finally moving `mdip.vim` back to its original place.
