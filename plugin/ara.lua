if vim.g.loaded_ara then
	return
end
vim.g.loaded_ara = true

vim.api.nvim_create_user_command("Ara", function(cmd)
	local name = cmd.args ~= "" and cmd.args or nil
	vim.notify(require("ara").hello(name))
end, {
	nargs = "?",
	desc = "Greet someone (ara.nvim)",
})
