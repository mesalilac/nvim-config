local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

-- Set barbar's options
bufferline.setup({
	-- Enable/disable animations
	animation = true,

	-- Enable/disable auto-hiding the tab bar when there is a single buffer
	auto_hide = false,

	-- Enable/disable current/total tabpages indicator (top right corner)
	tabpages = true,

	-- Enable/disable close button
	closable = true,

	-- Enables/disable clickable tabs
	--  - left-click: go to buffer
	--  - middle-click: delete buffer
	clickable = true,

	-- Excludes buffers from the tabline
	-- exclude_ft = { "javascript" },
	-- exclude_name = { "package.json" },

	-- Enable/disable icons
	-- if set to 'numbers', will show buffer index in the tabline
	-- if set to 'both', will show buffer index and icons in the tabline
	-- icons = {
	--     filetype = { enabled = true },
	--     separator.left = "▎",
	--     inactive.separator.left = "▎",
	--     modified.button = "●",
	--     button = "",
	--     pinned.button = "車",
	-- },

	-- If set, the icon color will follow its corresponding buffer
	-- highlight group. By default, the Buffer*Icon group is linked to the
	-- Buffer* group (see Highlighting below). Otherwise, it will take its
	-- default value as defined by devicons.
	icon_custom_colors = false,

	-- If true, new buffers will be inserted at the start/end of the list.
	-- Default is to insert after current buffer.
	insert_at_end = false,
	insert_at_start = false,

	-- Sets the maximum padding width with which to surround each tab
	maximum_padding = 1,

	-- Sets the minimum padding width with which to surround each tab
	minimum_padding = 1,

	-- Sets the maximum buffer name length.
	maximum_length = 30,

	-- If set, the letters for each buffer in buffer-pick mode will be
	-- assigned based on their name. Otherwise or in case all letters are
	-- already assigned, the behavior is to assign letters in order of
	-- usability (see order below)
	semantic_letters = true,

	-- New buffer letters are assigned in this order. This order is
	-- optimal for the qwerty keyboard layout but might need adjustement
	-- for other layouts.
	letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",

	-- Sets the name of unnamed buffers. By default format is "[Buffer X]"
	-- where X is the buffer number. But only a static string is accepted here.
	no_name_title = nil,
})

-- NOTE: ERROR: module 'nvim-tree.view' not found:\n\tno field package.preload['nvim-tree.view']\n\tno
--
-- for nvimTree
-- see: https://github.com/romgrk/barbar.nvim#integration-with-filetree-plugins
-- local nvim_tree_events = require("nvim-tree.events")
-- local bufferline_api = require("bufferline.api")

-- local function get_tree_size()
-- 	return require("nvim-tree.view").View.width
-- end

-- nvim_tree_events.subscribe("TreeOpen", function()
-- 	bufferline_api.set_offset(get_tree_size())
-- end)

-- nvim_tree_events.subscribe("Resize", function()
-- 	bufferline_api.set_offset(get_tree_size())
-- end)

-- nvim_tree_events.subscribe("TreeClose", function()
-- 	bufferline_api.set_offset(0)
-- end)
