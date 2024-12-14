# theme.nvim

Neovim Theme convenient for me.

A fork of: [redbug312/cactusbuddy](https://github.com/redbug312/cactusbuddy).

Based on [tjdevries/colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim).

## Installation

- [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "IlyasYOY/theme.nvim",
    dependencies = "tjdevries/colorbuddy.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("ilyasyoy")
    end,
},
```

## Examples

You can find them in [wiki](https://github.com/IlyasYOY/theme.nvim/wiki/Example).
