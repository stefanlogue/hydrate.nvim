local config = {}

--[[ Options specs ]]

---@class hydrate.config.Opts
---@field minute_interval integer|?
---@field render_style "default"|"minimal"|"simple"|"compact"|?
config.Opts = {}

---Get defaults
---@return hydrate.config.Opts
config.Opts.default = function()
	return {
		minute_interval = 20,
		render_style = "simple",
	}
end

return config
