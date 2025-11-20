local M = {}
local palette = require("bearded-diamond.palette").colors

function M.setup()
	-- Reset highlights
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "bearded-diamond"

	local groups = {
		-- UI HIGHLIGHTS -----------------------------------------------------------
		Normal = { fg = palette.fg, bg = palette.bg },
		NormalFloat = { fg = palette.fg, bg = palette.bg_float },
		FloatBorder = { fg = palette.cyan, bg = palette.bg_float },

		-- Line Numbers and Cursor
		LineNr = { fg = palette.fg_gutter },
		CursorLineNr = { fg = palette.cyan, bold = true },
		CursorLine = { bg = palette.bg_highlight },
		Cursor = { fg = palette.bg, bg = palette.cyan },

		-- Search and Visual
		Visual = { bg = palette.bg_visual },
		Search = { fg = palette.bg, bg = palette.cyan },
		IncSearch = { fg = palette.bg, bg = palette.orange },

		-- Status Line and Borders
		StatusLine = { fg = palette.fg, bg = palette.bg_dark },
		StatusLineNC = { fg = palette.fg_comment, bg = palette.bg_dark },
		VertSplit = { fg = palette.border, bg = palette.bg },
		WinSeparator = { fg = palette.border, bg = palette.bg },

		-- Pmenu (Autocompletion popup)
		Pmenu = { fg = palette.fg, bg = palette.bg_float },
		PmenuSel = { fg = palette.fg, bg = palette.bg_visual, bold = true },
		PmenuThumb = { bg = palette.fg_comment },

		-- Git Signs
		GitSignsAdd = { fg = palette.green },
		GitSignsChange = { fg = palette.cyan },
		GitSignsDelete = { fg = palette.red },

		-- Diagnostics
		DiagnosticError = { fg = palette.red },
		DiagnosticWarn = { fg = palette.orange },
		DiagnosticInfo = { fg = palette.cyan },
		DiagnosticHint = { fg = palette.cyan },

		-- SYNTAX HIGHLIGHTS (Legacy) ----------------------------------------------
		Comment = { fg = palette.fg_comment, italic = true },
		Constant = { fg = palette.red },
		String = { fg = palette.green },
		Character = { fg = palette.green },
		Number = { fg = palette.orange },
		Boolean = { fg = palette.red },
		Float = { fg = palette.orange },

		Identifier = { fg = palette.pink }, -- Variables
		Function = { fg = palette.cyan },

		Statement = { fg = palette.yellow }, -- Keywords (if, then, else)
		Conditional = { fg = palette.yellow },
		Repeat = { fg = palette.yellow },
		Label = { fg = palette.yellow },
		Operator = { fg = palette.yellow },
		Keyword = { fg = palette.yellow },
		Exception = { fg = palette.red },

		PreProc = { fg = palette.violet },
		Include = { fg = palette.yellow }, -- import
		Define = { fg = palette.violet },
		Macro = { fg = palette.violet },
		PreCondit = { fg = palette.violet },

		Type = { fg = palette.violet }, -- Classes, Types
		StorageClass = { fg = palette.yellow }, -- static, const
		Structure = { fg = palette.violet },
		Typedef = { fg = palette.violet },

		Special = { fg = palette.cyan },
		SpecialChar = { fg = palette.cyan },
		Tag = { fg = palette.cyan },
		Delimiter = { fg = palette.fg_dark },
		SpecialComment = { fg = palette.fg_comment },
		Debug = { fg = palette.red },

		-- TREESITTER HIGHLIGHTS (Modern) ------------------------------------------
		-- These are based on the tokenColors in your JSON

		["@variable"] = { fg = palette.pink },
		["@variable.builtin"] = { fg = palette.orange }, -- this, self
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
		["@keyword.function"] = { fg = palette.yellow }, -- func, fn
		["@keyword.operator"] = { fg = palette.yellow },
		["@keyword.return"] = { fg = palette.yellow },

		["@operator"] = { fg = palette.yellow },

		["@punctuation.delimiter"] = { fg = palette.fg_comment }, -- { } [ ]
		["@punctuation.bracket"] = { fg = palette.fg_comment },

		["@property"] = { fg = palette.fg }, -- object keys
		["@tag"] = { fg = palette.cyan }, -- html tags
		["@tag.attribute"] = { fg = palette.orange },
		["@tag.delimiter"] = { fg = palette.fg_comment },

		["@type"] = { fg = palette.violet },
		["@type.builtin"] = { fg = palette.violet },
	}

	-- Apply the highlights
	for group, settings in pairs(groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

return M
