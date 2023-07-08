local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

telescope.setup({
	defaults = {
		file_ignore_patterns = {
			"node_modules",
		},
	},
})

local git_worktree_status_ok, _ = pcall(require, "git-worktree")
if git_worktree_status_ok then
	telescope.load_extension("git_worktree")
end
