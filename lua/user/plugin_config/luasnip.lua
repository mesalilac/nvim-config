local status_ok, _ = pcall(require, "luasnip")
if not status_ok then
	return
end

require("luasnip/loaders/from_vscode").lazy_load()

require("luasnip.loaders.from_snipmate").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load({ paths = { vim.fn.getcwd() .. "/.luasnippets" } })
