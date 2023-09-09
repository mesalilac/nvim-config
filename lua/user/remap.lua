local nnoremap = require("user.keymap").nnoremap

-- paste without overwriting clip board
vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("n", "<leader>d", '"_dP')
vim.keymap.set("v", "<leader>d", '"_dP')

vim.keymap.set("n", "<leader>x", function()
	local file = vim.api.nvim_buf_get_name(0)

	vim.ui.input({ prompt = "Make '" .. file .. "' executable? (y/N) " }, function(input)
		if input == "y" then
			vim.cmd("silent! !chmod +x %")
			print(file .. " is now executable!")
		end
	end)
end, { silent = true })

nnoremap("<leader>cp", "<CMD>CccPick<CR>")

-- Open current buff with xdg-open
nnoremap("<leader>o", "<cmd>silent !xdg-open %<cr>", { silent = true })

-- open new buff
nnoremap("<C-t>", "<cmd>enew<cr>", { silent = true })

-- Toggle symbols outline
nnoremap("<leader>so", "<cmd>SymbolsOutline<cr>", { silent = true })

-- git worktree plugin remaps
nnoremap("<leader>ws", "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
nnoremap("<leader>wc", "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")

-- Move line/s up(-) or down(+)
vim.keymap.set("n", "K", ":m .-2<CR>==")
vim.keymap.set("n", "J", ":m .+1<CR>==")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--" Write buffer with Ctrl+s
nnoremap("<C-S>", "<cmd>if expand('%') == ''<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>")

--" Write buffer and exit with Ctrl+x
nnoremap("<C-A-X>", "<cmd>if expand('%') == ''<CR>browse confirm x<CR>else<CR>confirm x<CR>endif<CR>")

--" Write buffer and exit with Ctrl+q
nnoremap("<C-Q>", "<cmd>if expand('%') == ''<CR>browse confirm q<CR>else<CR>confirm q<CR>endif<CR>")

--" Window Navigation with Ctrl-[hjkl]
nnoremap("<C-J>", "<C-W>j")
nnoremap("<C-K>", "<C-W>k")
nnoremap("<C-H>", "<C-W>h")
nnoremap("<C-L>", "<C-W>l")

-- [[Git
nnoremap("<leader>gs", "<cmd>Git<CR>")
-- ]]

-- telescope
nnoremap("<C-f>", "<cmd>Telescope fd<CR>", { noremap = true })
nnoremap("<leader>lg", "<cmd>Telescope live_grep<CR>", { noremap = true })

-- delete word and go to insert mode
nnoremap("<C-d>", "diwi")

-- format
nnoremap("fr", "<cmd>Format<CR>")

nnoremap("<C-b>", "<cmd>NvimTreeFindFileToggle<CR>")

-- romgrk/barbar.nvim
local barbar_opts = { noremap = true, silent = true }

-- Move to previous/next
nnoremap("<C-[>", "<Cmd>BufferPrevious<CR>", barbar_opts)
nnoremap("<C-]>", "<Cmd>BufferNext<CR>", barbar_opts)
-- Re-order to previous/next
nnoremap("<C-<>", "<Cmd>BufferMovePrevious<CR>", barbar_opts)
nnoremap("<C->>", "<Cmd>BufferMoveNext<CR>", barbar_opts)
-- Goto buffer in position...
nnoremap("<C-1>", "<Cmd>BufferGoto 1<CR>", barbar_opts)
nnoremap("<C-2>", "<Cmd>BufferGoto 2<CR>", barbar_opts)
nnoremap("<C-3>", "<Cmd>BufferGoto 3<CR>", barbar_opts)
nnoremap("<C-4>", "<Cmd>BufferGoto 4<CR>", barbar_opts)
nnoremap("<C-5>", "<Cmd>BufferGoto 5<CR>", barbar_opts)
nnoremap("<C-6>", "<Cmd>BufferGoto 6<CR>", barbar_opts)
nnoremap("<C-7>", "<Cmd>BufferGoto 7<CR>", barbar_opts)
nnoremap("<C-8>", "<Cmd>BufferGoto 8<CR>", barbar_opts)
nnoremap("<C-9>", "<Cmd>BufferGoto 9<CR>", barbar_opts)
nnoremap("<C-0>", "<Cmd>BufferLast<CR>", barbar_opts)
-- Pin/unpin buffer
nnoremap("<C-A-p>", "<Cmd>BufferPin<CR>", barbar_opts)
-- Close buffer
nnoremap("<C-w>", "<Cmd>bd<CR>", barbar_opts)
-- nnoremap("<C-w>", "<Cmd>BufferClose<CR>", barbar_opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
nnoremap("<C-p>", "<Cmd>BufferPick<CR>", barbar_opts)
-- Sort automatically by...
nnoremap("<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", barbar_opts)
nnoremap("<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", barbar_opts)
nnoremap("<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", barbar_opts)
nnoremap("<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", barbar_opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
--vim.keymap.set("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
-- vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
-- vim.keymap.set("n", "gf", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
vim.keymap.set("n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
vim.keymap.set("n", "gl", '<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>', opts)
vim.keymap.set("n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
vim.keymap.set("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format{async=true}' ]])

vim.keymap.set("n", "<leader>xx", function()
	require("trouble").open()
end)
vim.keymap.set("n", "<leader>xw", function()
	require("trouble").open("workspace_diagnostics")
end)
vim.keymap.set("n", "<leader>xd", function()
	require("trouble").open("document_diagnostics")
end)
vim.keymap.set("n", "<leader>xq", function()
	require("trouble").open("quickfix")
end)
vim.keymap.set("n", "<leader>xl", function()
	require("trouble").open("loclist")
end)
