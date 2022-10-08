local nnoremap = require("user.keymap").nnoremap
local vnoremap = require("user.keymap").vnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Move line/s up(-) or down(+)
nnoremap("K", "<cmd>m .-2<CR>==")
nnoremap("J", "<cmd>m .+1<CR>==")
vnoremap("K", "<cmd>m '<-2<CR>gv=gv")
vnoremap("J", "<cmd>m '>+1<CR>gv=gv")

--" Write buffer with Ctrl+s
nnoremap("<C-S>", "<cmd>if expand('%') == ''<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>")

--" Write buffer and exit with Ctrl+x
nnoremap("<C-X>", "<cmd>if expand('%') == ''<CR>browse confirm x<CR>else<CR>confirm x<CR>endif<CR>")

--" Window Navigation with Ctrl-[hjkl]
nnoremap("<C-J> <C-W>", "j")
nnoremap("<C-K> <C-W>", "k")
nnoremap("<C-H> <C-W>", "h")
nnoremap("<C-L> <C-W>", "l")

nnoremap("<C-d>", "diwi")

