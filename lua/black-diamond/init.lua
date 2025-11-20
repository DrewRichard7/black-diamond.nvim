local M = {}
local palette = require("black-diamond.palette").colors

-- Default configuration
local default_config = {
	transparent = false,
}

M.config = vim.deepcopy(default_config)

-- 1. Setup just saves the config
function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", default_config, opts or {})
end

-- 2. Load actually applies the highlights
function M.load()
	-- Clear existing highlights
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "black-diamond"

	-- Resolve transparency
	local main_bg = palette.bg
	local float_bg = palette.bg_float
	local gutter_bg = palette.bg

	if M.config.transparent then
		main_bg = "NONE"
		gutter_bg = "NONE"
	end

	local groups = {
		-- UI HIGHLIGHTS -----------------------------------------------------------
		Normal = { fg = palette.fg, bg = main_bg },
		NormalNC = { fg = palette.fg, bg = main_bg },
		NormalFloat = { fg = palette.fg, bg = float_bg },
		FloatBorder = { fg = palette.cyan, bg = float_bg },

		LineNr = { fg = palette.fg_gutter, bg = gutter_bg },
		CursorLineNr = { fg = palette.cyan, bold = true, bg = gutter_bg },
		SignColumn = { bg = gutter_bg },

		CursorLine = { bg = palette.bg_highlight },
		Cursor = { fg = palette.bg, bg = palette.cyan },

		Visual = { bg = palette.bg_visual },
		Search = { fg = palette.bg, bg = palette.cyan },
		IncSearch = { fg = palette.bg, bg = palette.orange },

		StatusLine = { fg = palette.fg, bg = palette.bg_dark },
		StatusLineNC = { fg = palette.fg_comment, bg = palette.bg_dark },
		VertSplit = { fg = palette.border, bg = main_bg },
		WinSeparator = { fg = palette.border, bg = main_bg },

		Pmenu = { fg = palette.fg, bg = float_bg },
		PmenuSel = { fg = palette.fg, bg = palette.bg_visual, bold = true },
		PmenuThumb = { bg = palette.fg_comment },

		GitSignsAdd = { fg = palette.green, bg = gutter_bg },
		GitSignsChange = { fg = palette.cyan, bg = gutter_bg },
		GitSignsDelete = { fg = palette.red, bg = gutter_bg },

		DiagnosticError = { fg = palette.red, bg = gutter_bg },
		DiagnosticWarn = { fg = palette.orange, bg = gutter_bg },
		DiagnosticInfo = { fg = palette.cyan, bg = gutter_bg },
		DiagnosticHint = { fg = palette.cyan, bg = gutter_bg },

		-- SYNTAX HIGHLIGHTS ----------------------------------------------
		Comment = { fg = palette.fg_comment, italic = true },
		Constant = { fg = palette.red },
		String = { fg = palette.green },
		Character = { fg = palette.green },
		Number = { fg = palette.orange },
		Boolean = { fg = palette.red },
		Float = { fg = palette.orange },

		Identifier = { fg = palette.pink },
		Function = { fg = palette.cyan },
		Statement = { fg = palette.yellow },
		Conditional = { fg = palette.yellow },
		Repeat = { fg = palette.yellow },
		Label = { fg = palette.yellow },
		Operator = { fg = palette.yellow },
		Keyword = { fg = palette.yellow },
		Exception = { fg = palette.red },
		PreProc = { fg = palette.violet },
		Include = { fg = palette.yellow },
		Define = { fg = palette.violet },
		Macro = { fg = palette.violet },
		PreCondit = { fg = palette.violet },
		Type = { fg = palette.violet },
		StorageClass = { fg = palette.yellow },
		Structure = { fg = palette.violet },
		Typedef = { fg = palette.violet },
		Special = { fg = palette.cyan },
		SpecialChar = { fg = palette.cyan },
		Tag = { fg = palette.cyan },
		Delimiter = { fg = palette.fg_dark },
		SpecialComment = { fg = palette.fg_comment },
		Debug = { fg = palette.red },

		-- TREESITTER HIGHLIGHTS ------------------------------------------
		["@variable"] = { fg = palette.pink },
		["@variable.builtin"] = { fg = palette.orange },
		["@variable.parameter"] = { fg = palette.purple },
		["@constant"] = { fg = palette.red },
		["@constant.builtin"] = { fg = palette.red },
		["@module"] = { fg = palette.fg },
		["@label"] = { fg = palette.cyan },
		["@string"] = { fg = palette.green },
		["@string.regexp"] = { fg = palette.green },
		["@function"] = { fg = palette.cyan },
		["@function.builtin"] = { fg = palette.cyan },
		["@function.call"] = { fg = palette.cyan },
		["@function.macro"] = { fg = palette.cyan },
		["@constructor"] = { fg = palette.yellow },
		["@method"] = { fg = palette.cyan },
		["@keyword"] = { fg = palette.yellow },
		["@keyword.function"] = { fg = palette.yellow },
		["@keyword.operator"] = { fg = palette.yellow },
		["@keyword.return"] = { fg = palette.yellow },
		["@operator"] = { fg = palette.yellow },
		["@punctuation.delimiter"] = { fg = palette.fg_comment },
		["@punctuation.bracket"] = { fg = palette.fg_comment },
		["@property"] = { fg = palette.fg },
		["@tag"] = { fg = palette.cyan },
		["@tag.attribute"] = { fg = palette.orange },
		["@tag.delimiter"] = { fg = palette.fg_comment },
		["@type"] = { fg = palette.violet },
		["@type.builtin"] = { fg = palette.violet },
	}

	for group, settings in pairs(groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

return M
