local status_ok, gruvbox = pcall(require, "gruvbox")
if not status_ok then
	return
end

gruvbox.setup({
	terminal_colors = true, -- add neovim terminal colors
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = false,
		emphasis = true,
		comments = false,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = false, -- invert background for search, diffs, statuslines and errors
	contrast = "soft", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = true,
	transparent_mode = false,
})
