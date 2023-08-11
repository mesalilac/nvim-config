local o = vim.o

vim.g.mapleader = " "

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
o.conceallevel = 0 -- so that `` is visible in markdown files

-- Enable blinking together with different cursor shapes for insert/command mode, and cursor highlighting:
-- o.guicursor =
-- 	"n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
o.guicursor = "i:block"

o.smartindent = true
o.exrc = true
o.relativenumber = true
o.nu = true
-- o.guifont = "Iosevka Storm:h14"
o.guifont = "mononoki"
o.ignorecase = true
o.smartcase = true
o.swapfile = false
o.backup = false
o.undofile = true
o.incsearch = true
o.termguicolors = true
o.scrolloff = 8
o.sidescrolloff = 8
o.showmode = false
--o.colorcolumn = 80
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
o.cursorline = true
-- o.cursorcolumn = true
o.laststatus = 3
-- o.foldmethod = "expr"
-- o.foldexpr = "nvim_treesitter#foldexpr()"

-- Autocompletion
vim.cmd("set wildmode=longest,list,full")

vim.cmd("syntax on")
vim.cmd("set undodir=~/.vim/undodir")
vim.cmd("filetype plugin on")

-- go to next/prev after line end
-- vim.cmd("set whichwrap+=<,>,[,],h,l")

vim.cmd([[set iskeyword+=-]])

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")

-- remove trailing white space
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*" },
	command = [[%s/\s\+$//e]],
})
