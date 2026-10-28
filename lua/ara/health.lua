local M = {}

function M.check()
	vim.health.start("ara.nvim")

	if vim.fn.has("nvim-0.11") then
		vim.health.ok("Neovim >= 0.11")
	else
		vim.health.error("Neovim >= 0.11 is required")
	end

	local ok, config = pcall(require, "ara.config")
	if ok then
		vim.health.ok("Options: " .. vim.inspect(config.options))
	else
		vim.health.error("Could not load ara.config: " .. tostring(config))
	end
end

return M
