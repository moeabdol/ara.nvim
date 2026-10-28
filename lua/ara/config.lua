---@class ara.Config
---@field greeting string Word placed before the name, e.g. "Hello".
---@field name string|nil Who to greet. nil means "use $USER".
---@field punctuation string Appended after the name.

local M = {}

---@type ara.Config
M.defaults = {
	greeting = "Hello",
	name = nil,
	punctuation = "!",
}

---@type ara.Config
M.options = vim.deepcopy(M.defaults)

---@param opts? ara.Config
function M.setup(opts)
	opts = opts or {}
	vim.validate("opts", opts, "table")
	vim.validate("opts.greeting", opts.greeting, "string", true)
	vim.validate("opts.name", opts.name, "string", true)
	vim.validate("opts.punctuation", opts.punctuation, "string", true)

	M.options = vim.tbl_deep_extend("force", M.defaults, opts)
end

return M
