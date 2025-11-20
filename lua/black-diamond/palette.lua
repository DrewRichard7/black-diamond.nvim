-- lua/black-diamond/palette.lua
local M = {}

M.colors = {
	none = "NONE",

	-- Core
	bg = "#161d26", -- editor.background
	bg_dark = "#12181f", -- sideBar.background
	bg_darker = "#0b0e13",
	bg_light = "#1f2936",
	fg = "#c9d0d8", -- editor.foreground
	fg_dim = "#abb6c3",

	-- Accents
	cyan = "#11B7D4",
	cyan_dim = "#0fa1ba",
	yellow = "#c7910c",
	yellow_dim = "#a2730a",
	orange = "#d4770c",
	red = "#E35535",
	red_dim = "#b94427",
	green = "#00a884",
	magenta = "#d46ec0",
	purple = "#a85ff1",
	teal = "#38c7bd",

	-- UI grays
	line = "#0b0e13",
	comment = "#8ea7c7",
	comment_dim = "#536882",
	selection = "#283546",
	selection_dim = "#1f2936",
	gutter = "#343f4f",
	gutter_active = "#8597b0",

	-- Cursor
	cursor_fg = "#c7910c",
	cursor_bg = "#11B7D4",
}

return M
