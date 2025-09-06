local M = {}

M.config = function()
  local muyrux = require("plugins.muyrux.colors")
  -- Автозагрузка темы при старте Neovim
  muyrux.load(vim.o.background, false)

  -- Команды для toggle
  vim.api.nvim_create_user_command("MuyruxToggleTheme", function()
    muyrux.toggle()
  end, {})

  vim.api.nvim_create_user_command("MuyruxToggleTransparent", function()
    muyrux.toggle_transparent()
  end, {})
end

return Mbackground)
