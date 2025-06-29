local status_ok, alternate_toggler = pcall(require, "alternate-toggler")
if not status_ok then
	return
end

alternate_toggler.setup({
	alternates = {
		["true"] = "false",
		["True"] = "False",
		["TRUE"] = "FALSE",
		["yes"] = "no",
		["Yes"] = "No",
		["YES"] = "NO",
		["on"] = "off",
		["On"] = "Off",
		["active"] = "inactive",
		["Active"] = "Inactive",
		["enabled"] = "disabled",
		["Enabled"] = "Disabled",
		["1"] = "0",
		["<"] = ">",
		["("] = ")",
		["["] = "]",
		["{"] = "}",
		['"'] = "'",
		['""'] = "''",
		["+"] = "-",
		["==="] = "!==",
	},
})
