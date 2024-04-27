require("user.set")
require("user.plugins")

require("user.plugin_config")
require("user.remap")

local g = vim.g

-- vim.cmd("color gruvbox")
-- vim.cmd("color rose-pine-moon")
-- vim.cmd("color kanagawa")
-- vim.cmd("color onedark")

vim.cmd("colorscheme tokyonight")

if g.colors_name == "tokyonight" then
	vim.api.nvim_set_hl(0, "NvimTreeNormalFloat", { fg = "NONE", bg = "#1F2335" })
end
