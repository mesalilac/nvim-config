return {
	settings = {
		Lua = {
			completion = {
				enable = true,
			},
			diagnostics = {
				enable = true,
				globals = {
					"vim",
                    "use",
                    "awesome",
                    "client",
                    "root"
				},
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
                    "/usr/share/awesome/lib" = true,
				},
			},
		},
	},
}
