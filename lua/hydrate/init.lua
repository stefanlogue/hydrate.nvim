local M = {}

function M.setup(options)
	options = options or {}
	options.minute_interval = (options.minute_interval or 20) * 60 * 1000

	local timer = vim.loop.new_timer()
	local enabled = true

	local has_notify, notify = pcall(require, "notify")
	if has_notify then
		vim.notify = notify
	end

	local function on_timer()
		vim.notify(" 💧 Time for a drink ", vim.log.levels.WARN, {
			title = "hydrate.nvim",
			render = "compact",
			timeout = false,
			on_open = function()
				timer:stop()
			end,
			on_close = function()
				timer:again()
			end,
		})
	end

	local function print_minutes_until()
		local minutes_remaining = math.ceil(timer:get_due_in() / 60 / 1000)
		vim.print(
			string.format(
				"Drink due in " .. minutes_remaining .. " %s",
				minutes_remaining == 1 and "minute" or "minutes"
			)
		)
	end

	timer:start(options.minute_interval, options.minute_interval, vim.schedule_wrap(on_timer))

	vim.api.nvim_create_user_command("HydrateWhen", print_minutes_until, { desc = "Prints minutes until next drink" })

	vim.api.nvim_create_user_command("HydrateNow", function()
		if has_notify then
			require("notify").dismiss()
		end

		timer:stop()
		timer:again()
	end, { desc = "Tell us you've had a drink, so we can reset the timer" })

	vim.api.nvim_create_user_command("HydrateInterval", function(opts)
		options.minute_interval = tonumber(opts.args) * 60 * 1000
		local remaining = timer:get_due_in()
		timer:stop()
		timer:start(remaining, options.minute_interval, vim.schedule_wrap(on_timer))
		print_minutes_until()
	end, { desc = "Set the interval between drinks in minutes", nargs = 1 })

	vim.api.nvim_create_user_command("HydrateDisable", function()
		if not enabled then
			vim.print("Hydrate is already disabled")
			return
		end
		timer:stop()
		vim.print("Hydrate is disabled")
		enabled = false
		if has_notify then
			require("notify").dismiss()
		end
	end, { desc = "Disable hydration reminders" })

	vim.api.nvim_create_user_command("HydrateEnable", function()
		if enabled then
			vim.print("Hydrate is already enabled")
			return
		end
		timer:again()
		vim.print("Hydrate is enabled")
		enabled = true
	end, { desc = "Enable hydration reminders" })
end

return M
