<div align="center">
  <h1> 💧 hydrate.nvim</h1>
  <h5>Reminders to keep hydrated while you code</h5>
  <h6>'Water is the only drink for a wise man' - Henry David Thoreau</h6>

  [![Lua](https://img.shields.io/badge/Lua-blue.svg?style=for-the-badge&logo=lua)](http://www.lua.org)
</div>

## Table of contents
- [Installation](#installation)
  - [Optional Requirements](#requirements)
  - [lazy.nvim](#lazy)
- [Commands](#commands)

## Installation<a name="installation"></a>

### Optional requirements<a name="requirements"></a>
- [nvim-notify](https://github.com/rcarriga/nvim-notify)

### lazy.nvim<a name="lazy"></a>
```lua
{
  "stefanlogue/hydrate.nvim",
  opts = {
    minute_interval = 20
  }
}
```

## Commands<a name="commands"></a>
- `HydrateWhen` - Prints minutes until next drink
- `HydrateNow` - Tell us you've had a drink so we can reset the timer
- `DrinkInterval` - Set the interval between drinks in minutes
- `HydrateDisable` - Disable hydration reminders
- `HydrateEnable` - Enable hydration reminders
