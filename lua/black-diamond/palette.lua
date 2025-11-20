local M = {}

M.colors = {
	none = "NONE",

	-- Core
	bg = "#161d26", -- editor.background
	bg_dark = "#12181f", -- sideBar/background
	bg_darker = "#0b0e13",
	bg_light = "#1f2936",
	fg = "#c9d0d8", -- editor.foreground
	fg_dim = "#abb6c3",

	-- Accents
	cyan = "#11B7D4",
	cyan_dim = "#11B7D499",
	yellow = "#c7910c",
	yellow_dim = "#c7910c90",
	orange = "#d4770c",
	red = "#E35535",
	red_dim = "#E3553599",
	green = "#00a884",
	magenta = "#d46ec0",
	purple = "#a85ff1",
	teal = "#38c7bd",

	-- UI grays
	line = "#0b0e13",
	comment = "#8ea7c7",
	comment_dim = "#536882",
	selection = "#11b7d4",
	selection_dim = "#11b7d4", -- or maybe a darker variant if you like
	gutter = "#343f4f",
	gutter_active = "#8597b0",

	-- Special
	cursor_fg = "#c7910c",
	cursor_bg = "#11B7D4",
}

return M
