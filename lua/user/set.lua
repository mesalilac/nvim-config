o = vim.o

o.tabstop = 4 
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true
o.exrc = true
o.hlsearch = false
o.relativenumber = true
o.nu = true
o.guifont = "Iosevka 20"
o.ignorecase = true
o.smartcase = true
o.swapfile = false
o.backup = false
o.undofile = true
o.incsearch = true
o.termguicolors = true
o.scrolloff = 8
o.showmode = false
o.colorcolumn = 80
o.signcolumn = "yes"
o.number = true
o.errorbells = false
o.title = true
o.showmatch = true
o.autoindent = true
o.mouse = "a"
o.clipboard = "unnamedplus"
o.updatetime = 100
o.wrap = false

vim.cmd("syntax on")
vim.cmd("set undodir=~/.vim/undodir")
vim.cmd("filetype plugin on")

vim.g.mapleader = " "
