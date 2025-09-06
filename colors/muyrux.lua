local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local g = colorbuddy.groups
local s = colorbuddy.styles
local c = colorbuddy.colors

local current_theme = "dark"

local function apply_palette(palette)
	Group.new("Normal", c[palette.foreground], c[palette.background], s.none)
	Group.new("Comment", c[palette.comment], c[palette.background], s.italic)
	Group.new("Error", c[palette.accent], c[palette.background], s.bold)

	Group.new("Visual", c.none, c[palette.comment], s.none)
	Group.new("StatusLine", c[palette.foreground], c[palette.comment], s.none)
	Group.new("StatusLineNC", c[palette.comment], c[palette.background], s.none)
end

local function set_theme(mode)
	if mode == "dark" then
		local palette = require("colors.muyrux.palette_dark")
		apply_palette(palette)
	else
		local palette = require("colors.muyrux.palette_light")
		apply_palette(palette)
	end
	current_theme = mode
end

function ToggleTheme()
	if current_theme == "light" then
		set_theme("dark")
		print("🌑 Dark theme enabled")
	else
		set_theme("light")
		print("☀️ Light theme enabled")
	end
end

vim.api.nvim_create_user_command("ToggleTheme", function()
	ToggleTheme()
end, {})

-- включаем сразу тёмную
set_theme("dark")
