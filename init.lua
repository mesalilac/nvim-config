require("user.set")
require("user.plugins")

require("user.plugin_config")
require("user.remap")

local g = vim.g
local cmd = vim.cmd

-- cmd("color gruvbox")
-- cmd("color rose-pine-moon")
-- cmd("color kanagawa")
-- cmd("color onedark")

g.gruvbox_material_palette = "soft"
g.gruvbox_material_statusline_style = "soft"
g.gruvbox_material_better_performance = 1
g.gruvbox_material_enable_italic = 1
g.gruvbox_material_enable_bold = 1
g.gruvbox_material_diagnostic_text_highlight = 1
g.gruvbox_material_diagnostic_line_highlight = 1
g.gruvbox_material_diagnostic_virtual_text = "colored"
g.gruvbox_material_sign_column_background = "none"

cmd("colorscheme gruvbox-material")

if vim.g.colors_name == "gruvbox-material" then
	cmd("hi TodoSignTODO gui=bold guifg=#80aa9e")
	cmd("hi TodoFgTODO guifg=#80aa9e")
	cmd("hi TodoBgTODO guibg=#80aa9e")
	cmd("hi NvimTreeEmptyFolderName guifg=#a89984")
	cmd("hi NvimTreeFolderIcon guifg=#a89984")
	cmd("hi NvimTreeFolderName guifg=#a89984 gui=bold")
	cmd("hi NvimTreeOpenedFolderName guifg=#e2cca9 gui=bold")
	cmd("hi NvimTreeExecFile guifg=#b0b846 gui=bold")
	cmd("hi NvimTreeSymlink guifg=#80aa9e gui=bold")
	cmd("hi NvimTreeIndentMarker guifg=#a89984")
	cmd("hi NvimTreeLspDiagnosticsError guifg=#f2594b")
	cmd("hi NvimTreeLspDiagnosticsWarning guifg=#e9b143")
	cmd("hi NvimTreeLspDiagnosticsInfo guifg=#80aa9e")
	cmd("hi NvimTreeLspDiagnosticsHint guifg=#b0b846")
	-- cmd("hi StatusLine guibg=none")
	-- cmd("hi StatusLineNC guibg=none guifg=none")
	cmd("hi DiagnosticVirtualTextError guifg=#f2594b gui=italic")
	cmd("hi DiagnosticVirtualTextWarn guifg=#e9b143 gui=italic")
	cmd("hi DiagnosticVirtualTextInfo guifg=#80aa9e gui=italic")
	cmd("hi DiagnosticVirtualTextHint guifg=#8bba7f gui=italic")
	cmd("hi TelescopeBorder guifg=#7c6f64")
	cmd("hi TelescopeMatching guifg=#80aa9e")
	cmd("hi TelescopeMultiSelection guifg=#b0b846")
	cmd("hi TelescopeNormal guifg=#a89984")
	cmd("hi TelescopePromptNormal guifg=#e2cca9 gui=italic")
	cmd("hi TelescopePromptPrefix guifg=#80aa9e")
	cmd("hi TelescopeResultsNormal guifg=#a89984")
	cmd("hi TelescopeSelection guifg=#e2cca9")
	cmd("hi TelescopeSelectionCaret guifg=#8bba7f")
	cmd("hi TelescopeTitle guifg=#8bba7f gui=italic")
end

cmd("hi TreesitterContextBottom gui=underline guisp=Grey")
vim.api.nvim_set_hl(0, "FocusedSymbol", { fg = "#111111", bg = "#D7BA7D" })
vim.api.nvim_set_hl(0, "SymbolsOutlineConnector", { fg = "#5A5A5A", bg = "NONE" })
