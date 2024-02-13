require("user.set")
require("user.plugins")

require("user.plugin_config")
require("user.remap")

vim.cmd("color catppuccin-mocha")

vim.cmd("hi TreesitterContextBottom gui=underline guisp=Grey")
vim.api.nvim_set_hl(0, "FocusedSymbol", { fg = "#111111", bg = "#D7BA7D" })
vim.api.nvim_set_hl(0, "SymbolsOutlineConnector", { fg = "#5A5A5A", bg = "NONE" })
