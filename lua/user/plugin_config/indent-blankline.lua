local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

-- vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

vim.opt.termguicolors = true

vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = "#E06C75", nocombine = true })
vim.api.nvim_set_hl(0, "IndentBlanklineContextStart", { bg = "#2e2d2d", nocombine = true })

indent_blankline.setup({
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
	char_list_blankline = { "|", "¦", "┆", "┊" },
})
