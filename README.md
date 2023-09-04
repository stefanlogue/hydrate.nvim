<div align="center">
  <h1> 💧 hydrate.nvim 💧 </h1>
  <h5>Reminders to keep hydrated while you code</h5>
  <h6>'Water is the only drink for a wise man' - Henry David Thoreau</h6>

  [![Lua](https://img.shields.io/badge/Lua-blue.svg?style=for-the-badge&logo=lua)](http://www.lua.org)
  [!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/yellow_img.png)](https://www.buymeacoffee.com/stefanlogu4)
</div>


## Table of contents
- [Installation](#installation)
  - [Optional Requirements](#requirements)
  - [lazy.nvim](#lazy)
- [Config](#config)
- [Commands](#commands)

## Installation<a name="installation"></a>

### Optional requirements<a name="requirements"></a>
- [nvim-notify](https://github.com/rcarriga/nvim-notify)

### lazy.nvim<a name="lazy"></a>
```lua
{
  "stefanlogue/hydrate.nvim",
  -- This installs the latest stable release.
  -- Set to false or omit to install the latest development version
  version = "*",
  opts = {
    -- See below for config options
  }
}
```

## Config<a name="config"></a>
This is a list of the options that can be passed to `require("hydrate").setup()` with their default values:
```lua
{
  -- The interval between notifications in minutes
  minute_interval = 20,

  -- The render style for notifications
  -- Accepted values are "default", "minimal", "simple" or "compact"
  render_style = "compact",

  -- Loads time of last drink on startup
  -- Useful if you don't have long-running neovim instances
  -- or if you tend to have multiple instances running at a time
  persist_timer = false
}
```

## Commands<a name="commands"></a>
- `HydrateWhen` - Prints minutes until next drink
- `HydrateNow` - Tell us you've had a drink so we can reset the timer
- `DrinkInterval` - Set the interval between drinks in minutes
- `HydrateDisable` - Disable hydration reminders
- `HydrateEnable` - Enable hydration reminders

## Acknowledgements
[stand.nvim](https://github.com/mvllow/stand.nvim) for the general idea
