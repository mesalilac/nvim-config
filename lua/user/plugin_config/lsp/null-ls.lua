local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({ extra_args = { "--single-quote", "--jsx-single-quote", "--semi", "--tab-width=4" } }),
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
		-- formatting.rustfmt,
		-- formatting.clang_format.with({ extra_args = { "-style={BasedOnStyle: llvm, IndentWidth: 4}" } }),
		diagnostics.zsh,
	},

	-- format on save
	-- on_attach = function(client, bufnr)
	-- 	if client.supports_method("textDocument/formatting") then
	-- 		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
	-- 		vim.api.nvim_create_autocmd("BufWritePre", {
	-- 			group = augroup,
	-- 			buffer = bufnr,
	-- 			callback = function()
	-- 				-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
	-- 				-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
	-- 				vim.lsp.buf.format({ async = false })
	-- 			end,
	-- 		})
	-- 	end
	-- end,
})
