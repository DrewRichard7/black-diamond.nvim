local M = {}

M.colors = {
	bg = "#161d26", -- editor.background
	bg_dark = "#12181f", -- sidebars
	bg_float = "#1f2936", -- widgets/floating windows

	-- FIXED: These are now solid colors representing the blend
	-- Originally #11b7d415 (Cyan @ 8% on BG)
	bg_highlight = "#1b252f",

	-- Originally #324256 (Visual Selection)
	bg_visual = "#263242",

	fg = "#c5cfdc", -- default text
	fg_dark = "#a5b5c9", -- darker text
	fg_comment = "#465b76", -- comments
	fg_gutter = "#394352", -- line numbers

	cyan = "#11B7D4",
	green = "#00a884",
	orange = "#d4770c",
	yellow = "#c7910c",
	red = "#E35535",
	purple = "#d46ec0",
	violet = "#a85ff1",
	pink = "#c62f52",
	blue_dark = "#3585bb",

	border = "#0b0e13",
}

return M
