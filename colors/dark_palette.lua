local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color

-- тёмная палитра
local palette = {
	{ keys = { "bg" }, gui = "#1c1c1c" },
	{ keys = { "fg" }, gui = "#ffffff" },
	{ keys = { "comment" }, gui = "#949494" },
	{ keys = { "accent" }, gui = "#ff9e64" },
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
