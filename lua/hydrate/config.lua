local config = {}

--[[ Options specs ]]

---@class hydrate.config.Opts
---@field minute_interval integer|?
---@field render_style "default"|"minimal"|"simple"|"compact"|?
---@field persist_timer boolean|?
config.Opts = {}

---Get defaults
---@return hydrate.config.Opts
config.Opts.default = function()
	return {
		minute_interval = 20,
		render_style = "compact",
		persist_timer = false,
	}
end

return config
