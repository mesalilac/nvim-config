local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

telescope.setup({
	extensions = {
		file_browser = {
			theme = "ivy",
			-- your custom normal mode mappings
		},
	},
})

-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
telescope.load_extension("file_browser")

local git_worktree_status_ok, _ = pcall(require, "git-worktree")
if git_worktree_status_ok then
    telescope.load_extension("git_worktree")
end

