local status_ok, todo_comments = pcall(require, "todo-comments")
if not status_ok then
	return
end

todo_comments.setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
})
