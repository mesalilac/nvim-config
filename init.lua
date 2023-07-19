require("user.set")
require("user.plugins")

-- require("user.darkcode")

-- vim.g.oh_lucy_italic_comments = true
-- vim.g.oh_lucy_italic_keywords = true
-- vim.g.oh_lucy_italic_booleans = true
-- vim.g.oh_lucy_italic_function = true
-- vim.g.oh_lucy_italic_variables = true

-- Activates italicized comments (make sure your terminal supports italics)
-- vim.g.codedark_italics=1
-- Make the background transparent
-- vim.g.codedark_transparent=1

vim.cmd("color vscode")

require("user.plugin_config")
require("user.remap")

vim.cmd("hi TreesitterContextBottom gui=underline guisp=Grey")
vim.api.nvim_set_hl(0, "FocusedSymbol", { fg = "#111111", bg = "#D7BA7D" })
vim.api.nvim_set_hl(0, "SymbolsOutlineConnector", { fg = "#5A5A5A", bg = "NONE" })
