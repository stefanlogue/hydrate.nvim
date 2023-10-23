local config = {}

--[[ Options specs ]]

---@class hydrate.config.Opts
---@field minute_interval integer|?
---@field render_style "default"|"minimal"|"simple"|"compact"|?
---@field persist_timer boolean|?
---@field msg_hydrated string
---@field msg_hydrate_now string
config.Opts = {}

---Get defaults
---@return hydrate.config.Opts
config.Opts.default = function()
  return {
    minute_interval = 20,
    render_style = "compact",
    persist_timer = false,
    msg_hydrate_now = " 💧 Time for a drink ",
    msg_hydrated = " 💧 You've had a drink, timer reset 💧",
    msg_minutes_until = "Drink due in"
  }
end

return config
