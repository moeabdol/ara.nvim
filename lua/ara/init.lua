local config = require("ara.config")

local M = {}

---@param opts? ara.Config
function M.setup(opts)
	config.setup(opts)
end

function M.hello(name)
	local o = config.options
	name = name or o.name or vim.env.USER or "world"
	return ("%s, %s%s"):format(o.greeting, name, o.punctuation)
end

return M
