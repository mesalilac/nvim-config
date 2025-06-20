local status_ok, alternate_toggler = pcall(require, "alternate-toggler")
if not status_ok then
	return
end

alternate_toggler.setup({
	alternates = {
		["yes"] = "no",
		["on"] = "off",
		["active"] = "inactive",
		["enabled"] = "disabled",
	},
})
