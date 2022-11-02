return {
	settings = {

		Lua = {
			diagnostics = {
				globals = {
					"vim",
				},
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
					["/usr/share/awesome/lib"] = true,
				},
			},
		},
	},
}
