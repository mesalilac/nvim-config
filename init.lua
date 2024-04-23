require("user.set")
require("user.plugins")

require("user.plugin_config")
require("user.remap")

local g = vim.g

-- vim.cmd("color gruvbox")
-- vim.cmd("color rose-pine-moon")
-- vim.cmd("color kanagawa")
-- vim.cmd("color onedark")

g.gruvbox_material_palette = "soft"
g.gruvbox_material_statusline_style = "soft"
g.gruvbox_material_better_performance = 1
g.gruvbox_material_enable_italic = 1
g.gruvbox_material_enable_bold = 1
g.gruvbox_material_diagnostic_text_highlight = 1
g.gruvbox_material_diagnostic_line_highlight = 1
g.gruvbox_material_diagnostic_virtual_text = "colored"
g.gruvbox_material_sign_column_background = "none"

-- vim.cmd("colorscheme gruvbox-material")
vim.cmd("colorscheme tokyonight")

-- FIXME: hi NvimTree NOT WORKING
vim.cmd([[
    :hi TodoSignTODO gui=bold guifg=#80aa9e
    :hi TodoFgTODO guifg=#80aa9e
    :hi TodoBgTODO guibg=#80aa9e
    :hi NvimTreeEmptyFolderName guifg=#a89984
    :hi NvimTreeFolderIcon guifg=#a89984
    :hi NvimTreeFolderName guifg=#a89984 gui=bold
    :hi NvimTreeOpenedFolderName guifg=#e2cca9 gui=bold
    :hi NvimTreeExecFile guifg=#b0b846 gui=bold
    :hi NvimTreeSymlink guifg=#80aa9e gui=bold
    :hi NvimTreeIndentMarker guifg=#a89984
    :hi NvimTreeLspDiagnosticsError guifg=#f2594b
    :hi NvimTreeLspDiagnosticsWarning guifg=#e9b143
    :hi NvimTreeLspDiagnosticsInfo guifg=#80aa9e
    :hi NvimTreeLspDiagnosticsHint guifg=#b0b846
    :hi DiagnosticVirtualTextError guifg=#f2594b gui=italic
    :hi DiagnosticVirtualTextWarn guifg=#e9b143 gui=italic
    :hi DiagnosticVirtualTextInfo guifg=#80aa9e gui=italic
    :hi DiagnosticVirtualTextHint guifg=#8bba7f gui=italic
    :hi TelescopeBorder guifg=#7c6f64
    :hi TelescopeMatching guifg=#80aa9e
    :hi TelescopeMultiSelection guifg=#b0b846
    :hi TelescopeNormal guifg=#a89984
    :hi TelescopePromptNormal guifg=#e2cca9 gui=italic
    :hi TelescopePromptPrefix guifg=#80aa9e
    :hi TelescopeResultsNormal guifg=#a89984
    :hi TelescopeSelection guifg=#e2cca9
    :hi TelescopeSelectionCaret guifg=#8bba7f
    :hi TelescopeTitle guifg=#8bba7f gui=italic
    :hi TreesitterContextBottom gui=underline guisp=Grey
]])
vim.api.nvim_set_hl(0, "FocusedSymbol", { fg = "#111111", bg = "#D7BA7D" })
vim.api.nvim_set_hl(0, "SymbolsOutlineConnector", { fg = "#5A5A5A", bg = "NONE" })
vim.api.nvim_set_hl(0, "NvimTreeNormalFloat", { fg = "NONE", bg = "#1F2335" })
vim.api.nvim_set_hl(0, "@ibl.scope.char.1", { fg = "#e9b143", nocombine = true })
