require("colorbuddy").colorscheme("muyrux")

local colorbuddy = require("colorbuddy")

local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

-- setup colors
local palette = {
	{ keys = { "red_light" }, gui = "#722529" },
	{ keys = { "red" }, gui = "#d75f5f" },

	{ keys = { "orange" }, gui = "#d7875f" },
	{ keys = { "brown" }, gui = "#af875f" },
	{ keys = { "brown_deep" }, gui = "#875f5f" },

	{ keys = { "green_deep" }, gui = "#1abc9c" },
	{ keys = { "green" }, gui = "#49503b" },
	{ keys = { "green_light" }, gui = "#9ece6a" },

	{ keys = { "blue_light" }, gui = "#89ddff" },
	{ keys = { "blue" }, gui = "#7dcfff" },
	{ keys = { "blue_dark" }, gui = "#2ac3de" },

	{ keys = { "pink" }, gui = "#EE5396" },
	{ keys = { "purple" }, gui = "#bb9af7" },

	-- Grayscale
	{ keys = { "white" }, gui = "#ffffff" },
	{ keys = { "light_grey" }, gui = "#bcbcbc" },
	{ keys = { "grey" }, gui = "#949494" },
	{ keys = { "dark" }, gui = "#767676" },
	{ keys = { "darker" }, gui = "#585858" },
	{ keys = { "darkest" }, gui = "#444444" },
	{ keys = { "base" }, gui = "#ffffff" },
	{ keys = { "black" }, gui = "#1c1c1c" },
}

for _, value in ipairs(palette) do
	for _, key in ipairs(value.keys) do
		Color.new(key, value.gui)
	end
end

-- EDITOR BASICS
-- https://neovim.io/doc/user/syntax.html#group-name

-- Custom groups
Group.new("Noise", c.light_grey, c.none, s.none)

-- Basic groups
Group.new("Comment", c.dark, c.white, s.none)
Group.new("Normal", c.black, c.white, s.none)

Group.new("NonText", c.dark, c.none, s.none)
Group.new("Error", c.red, c.none, s.none)
Group.new("Number", c.orange, c.none, s.none)
Group.new("Special", c.purple, c.none, s.none)
Group.new("String", c.green_deep, c.none, s.none)
Group.new("Title", c.blue, c.none, s.none)
Group.new("Todo", c.pink, c.none, s.none)
Group.new("Warning", c.orange, c.none, s.none)

-- https://neovim.io/doc/user/syntax.html#hl-User1
Group.new("User1", c.pink, c.none, s.none)
Group.new("User2", c.blue, c.none, s.none)
Group.new("User3", c.pink, c.none, s.none)

-- diff
Group.new("Added", g.Normal, c.green, s.none)
Group.new("Changed", g.Normal, c.blue_dark, s.none)
Group.new("Removed", g.Normal, c.red_light, s.none)

-- search and highlight stuff
Group.new("MatchParen", c.Normal, c.none, s.underline)

Group.new("CurSearch", c.pink, c.none, s.underline)
Group.new("IncSearch", c.pink, c.none, s.none)
Group.new("Search", c.pink, c.none, s.none)

Group.new("Pmenu", c.darker, c.white, s.none)
Group.new("PmenuSel", c.grey, c.white, s.none)
Group.new("PmenuThumb", c.brown, c.white, s.none) -- not sure what this is
Group.new("WildMenu", c.pink, c.base, s.none)

Group.new("StatusLine", c.none, c.base, s.none)
Group.new("StatusLineNC", c.black, c.white, s.none)

Group.new("Visual", c.blue, c.base, s.none)
Group.new("VisualNOS", c.blue, c.base, s.none)

Group.new("qffilename", g.Title, g.Title, g.Title)

-- spelling problesm are shown!
Group.new("SpellBad", c.red, c.none, s.undercurl)
Group.new("SpellCap", c.orange, c.none, s.undercurl)
Group.new("SpellLocal", c.brown, c.none, s.undercurl)
Group.new("SpellRare", c.blue, c.none, s.undercurl)

-- LINKS
Group.link("Constant", g.Normal)
Group.link("Boolean", g.Number)
Group.link("Character", g.Number)
Group.link("Conditional", g.Normal)
Group.link("Debug", g.Todo)
Group.link("Delimiter", g.Normal)
Group.link("Directory", g.String)
Group.link("Exception", g.Normal)
Group.link("Function", g.Special)
Group.link("Identifier", g.Normal)
Group.link("Include", g.Normal)
Group.link("Keyword", g.Noise)
Group.new("Label", g.Normal, g.Normal, g.Normal + s.bold)
Group.link("Macro", g.User2)
Group.link("Operator", g.Noise)
Group.link("PreProc", g.Normal)
Group.link("Repeat", g.Normal)
Group.link("SpecialChar", g.Special)
Group.link("SpecialKey", g.Special)
Group.link("Statement", g.Normal)
Group.link("StorageClass", g.Normal)
Group.link("Structure", g.Normal)
Group.link("Tag", g.Normal)
Group.link("Type", g.User3)
Group.link("TypeDef", g.User3)

-- treesitter stuff
Group.link("@type.builtin", g.User3)
Group.link("@constant.builtin", g.User1)
Group.link("@constructor", g.Special)
Group.link("@exception.operator", g.Special)
Group.link("@function.macro", g.Normal)
Group.link("@namespace", g.Normal)
Group.link("@punctuation.special", g.Normal)
Group.link("@keyword.storage", g.User2)
Group.link("@type.qualifier", g.Normal)
Group.link("@variable", g.Normal)
Group.link("@variable.builtin", g.String)

-- USER INTERFACE
Group.link("ErrorMsg", g.Error)
Group.link("ModeMsg", g.Normal)
Group.link("MoreMsg", g.Normal)
Group.link("Question", g.Warning)
Group.link("WarningMsg", g.Warning)

Group.link("Conceal", g.Comment)
Group.link("CursorLine", g.StatusLine)
Group.link("ColorColumn", g.CursorLine)
Group.link("CursorLineNr", g.Normal)
Group.link("EndOfBuffer", g.NonText)
Group.link("Folded", g.NonText)
Group.link("LineNr", g.NonText)
Group.link("FoldColumn", g.LineNr)
Group.link("SignColumn", g.LineNr)
Group.link("VertSplit", g.NonText)
Group.link("Whitespace", g.NonText)
Group.link("WinSeparator", g.NonText)

Group.link("NormalFloat", g.Normal)
Group.link("TabLine", g.Normal)
Group.link("TabLineFill", g.Normal)
Group.link("TabLineSel", g.Special)

Group.link("NvimInternalError", g.Error)
Group.link("FloatBorder", g.NonText)

-- Diagnostics
Group.new("DiagnosticUnderlineError", c.none, c.none, s.underline, c.red)
Group.new("DiagnosticUnderlineWarn", c.none, c.none, s.underline, c.orange)
Group.new("DiagnosticUnderlineHint", c.none, c.none, s.underline)
Group.new("DiagnosticUnderlineInfo", c.none, c.none, s.underline)
Group.link("DiagnosticError", g.Error)
Group.link("DiagnosticWarn", g.Warning)
Group.link("DiagnosticHint", g.Comment)
Group.link("DiagnosticInfo", g.Comment)
Group.link("DiagnosticOk", g.String)

-- GitSigns
Group.new("GitSignsAdd", c.green_light, c.none, s.none)
Group.new("GitSignsChange", c.orange, c.none, s.none)
Group.new("GitSignsDelete", c.red, c.none, s.none)

-- Telescope
Group.link("TelescopeBorder", g.Noise)
Group.link("TelescopeMatching", g.User1)
Group.link("TelescopePromptCounter", g.Noise)

-- Markdown
Group.link("@markup.list.unchecked.markdown", g.Error)
Group.link("@markup.list.checked.markdown", g.Number)
Group.link("@markup.link.label.markdown_inline", g.Special)
Group.link("@markup.link.url.markdown_inline", g.Noise)

-- Fugitive
Group.link("fugitiveUnstagedModifier", g.TypeDef)
Group.link("fugitiveStagedHeading", g.Warning)
Group.link("fugitiveUntrackedHeading", g.Macro)
Group.link("fugitiveUntrackedSection", g.Noise)
Group.link("fugitiveUntrackedModifier", g.Noise)
Group.new("diffadded", c.none, c.green, s.none)
Group.new("diffremoved", c.none, c.red_light, s.none)
