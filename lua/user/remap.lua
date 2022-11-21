local nnoremap = require("user.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<leader>o", "<cmd>silent !xdg-open %<cr>", { silent = true }) -- Open current buff with xdg-open
nnoremap("<C-t>", "<cmd>enew<cr>", { silent = true }) -- open new buff
nnoremap("<leader>so", "<cmd>SymbolsOutline<cr>", { silent = true }) -- Toggle symbols outline

-- git worktree plugin remaps
nnoremap("<leader>ws", "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
nnoremap("<leader>wc", "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")

-- Move line/s up(-) or down(+)
vim.cmd([[
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
]])

--" Write buffer with Ctrl+s
nnoremap("<C-S>", "<cmd>if expand('%') == ''<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>")

--" Write buffer and exit with Ctrl+x
nnoremap("<C-X>", "<cmd>if expand('%') == ''<CR>browse confirm x<CR>else<CR>confirm x<CR>endif<CR>")

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
nnoremap("<leader>fb", "<cmd>Telescope file_browser<CR>", { noremap = true })
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
nnoremap("<C-w>", "<Cmd>BufferClose<CR>", barbar_opts)
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
