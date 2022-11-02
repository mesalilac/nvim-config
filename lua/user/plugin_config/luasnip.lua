require("luasnip.loaders.from_snipmate").lazy_load()

require("luasnip.loaders.from_snipmate").lazy_load({ paths = { vim.fn.getcwd() .. "/.luasnippets" } })
