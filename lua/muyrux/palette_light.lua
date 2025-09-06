local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color

-- светлая палитра
local palette = {
	{ keys = { "bg" }, gui = "#ffffff" },
	{ keys = { "fg" }, gui = "#1c1c1c" },
	{ keys = { "comment" }, gui = "#767676" },
	{ keys = { "accent" }, gui = "#d75f5f" },
}

for _, value in ipairs(palette) do
	for _, key in ipairs(value.keys) do
		Color.new(key, value.gui)
	end
end

return {
	background = "bg",
	foreground = "fg",
	comment = "comment",
	accent = "accent",
}
