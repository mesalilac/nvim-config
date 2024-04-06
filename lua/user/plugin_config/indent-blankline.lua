local status_ok, indent_blankline = pcall(require, "ibl")
if not status_ok then
	return
end

vim.opt.termguicolors = true

indent_blankline.setup()
