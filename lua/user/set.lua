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
o.nu = true -- Add line numbers
o.relativenumber = true -- Add relative line number
o.guifont = "mononoki:h15"
o.ignorecase = true
o.smartcase = true
o.swapfile = false
o.backup = false
o.undofile = true
o.incsearch = true
o.scrolloff = 8
o.sidescrolloff = 8
o.showmode = false
o.colorcolumn = "+1"
o.signcolumn = "yes"
o.errorbells = false
o.title = true
o.showmatch = true
o.autoindent = true
o.mouse = "a"
o.clipboard = "unnamedplus"
o.updatetime = 100
o.wrap = false
o.cursorline = true
o.background = "dark"
-- o.cursorcolumn = true
o.laststatus = 3
-- o.foldmethod = "expr"
-- o.foldexpr = "nvim_treesitter#foldexpr()"

if vim.fn.has("termguicolors") then
	o.termguicolors = true
end

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

-- Fix for autoformat not working with clangd
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
vim.api.nvim_clear_autocmds({ group = augroup })
vim.api.nvim_create_autocmd("BufWritePre", {
	group = augroup,
	callback = function()
		-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
		-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
		vim.lsp.buf.format({ async = false })
	end,
})

-- disable diagnostic for .env file
local dotenvgroup = vim.api.nvim_create_augroup("__env_diagnostics", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { ".env" },
	group = dotenvgroup,
	callback = function(args)
		vim.diagnostic.disable(args.buf)
	end,
})
