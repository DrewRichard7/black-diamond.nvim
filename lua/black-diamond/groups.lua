-- lua/black-diamond/groups.lua
local M = {}

local function hi(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.setup(p)
	-- Basic editor colors
	hi("Normal", { fg = p.fg, bg = p.bg })
	hi("NormalFloat", { fg = p.fg, bg = p.bg_dark })
	hi("SignColumn", { fg = p.gutter_active, bg = p.bg })
	hi("LineNr", { fg = p.gutter, bg = p.bg })
	hi("CursorLineNr", { fg = p.gutter_active, bg = p.bg })
	hi("CursorLine", { bg = p.selection_dim })
	hi("Cursor", { fg = p.cursor_fg, bg = p.cursor_bg })
	hi("Visual", { bg = p.selection })
	hi("Search", { bg = p.cyan, fg = p.bg })
	hi("IncSearch", { bg = p.yellow, fg = p.bg })
	hi("MatchParen", { fg = p.cyan, bold = true })

	hi("VertSplit", { fg = p.bg_darker, bg = p.bg })
	hi("WinSeparator", { fg = p.bg_darker, bg = p.bg })
	hi("StatusLine", { fg = p.fg_dim, bg = p.bg_dark })
	hi("StatusLineNC", { fg = p.comment_dim, bg = p.bg_dark })

	hi("Pmenu", { fg = p.fg_dim, bg = p.bg_dark })
	hi("PmenuSel", { fg = p.fg, bg = p.selection })
	hi("PmenuSbar", { bg = p.bg_dark })
	hi("PmenuThumb", { bg = p.bg_light })

	hi("ColorColumn", { bg = p.bg_dark })
	hi("CursorColumn", { bg = p.selection_dim })
	hi("FoldColumn", { fg = p.comment_dim, bg = p.bg })
	hi("Folded", { fg = p.comment, bg = p.bg_dark })

	hi("NonText", { fg = p.comment_dim })
	hi("Whitespace", { fg = p.comment_dim })
	hi("SpecialKey", { fg = p.comment_dim })

	hi("Directory", { fg = p.cyan })
	hi("ErrorMsg", { fg = p.red, bold = true })
	hi("WarningMsg", { fg = p.orange, bold = true })
	hi("MoreMsg", { fg = p.green })
	hi("Question", { fg = p.cyan })
	hi("Title", { fg = p.yellow, bold = true })

	-- Standard syntax
	hi("Comment", { fg = p.comment, italic = true })
	hi("Constant", { fg = p.red })
	hi("String", { fg = p.green })
	hi("Character", { fg = p.green })
	hi("Number", { fg = p.orange })
	hi("Boolean", { fg = p.orange })
	hi("Float", { fg = p.orange })

	hi("Identifier", { fg = p.red }) -- variables
	hi("Function", { fg = p.cyan }) -- functions

	hi("Statement", { fg = p.yellow }) -- if, for, return
	hi("Conditional", { fg = p.yellow })
	hi("Repeat", { fg = p.yellow })
	hi("Label", { fg = p.yellow })
	hi("Operator", { fg = p.yellow })
	hi("Keyword", { fg = p.yellow })
	hi("Exception", { fg = p.yellow })

	hi("PreProc", { fg = p.purple })
	hi("Include", { fg = p.yellow })
	hi("Define", { fg = p.purple })
	hi("Macro", { fg = p.purple })
	hi("PreCondit", { fg = p.purple })

	hi("Type", { fg = p.purple })
	hi("StorageClass", { fg = p.teal })
	hi("Structure", { fg = p.teal })
	hi("Typedef", { fg = p.teal })

	hi("Special", { fg = p.cyan })
	hi("SpecialChar", { fg = p.cyan })
	hi("Tag", { fg = p.cyan })
	hi("Delimiter", { fg = p.comment_dim })
	hi("SpecialComment", { fg = p.comment, italic = true })
	hi("Debug", { fg = p.red })

	hi("Underlined", { underline = true })
	hi("Bold", { bold = true })
	hi("Italic", { italic = true })

	hi("Error", { fg = p.red })
	hi("Todo", { fg = p.yellow, bg = p.bg_dark, bold = true })

	-- Diagnostics (LSP)
	hi("DiagnosticError", { fg = p.red })
	hi("DiagnosticWarn", { fg = p.orange })
	hi("DiagnosticInfo", { fg = p.cyan })
	hi("DiagnosticHint", { fg = p.cyan_dim })
	hi("DiagnosticOk", { fg = p.green })

	hi("DiagnosticUnderlineError", { sp = p.red, undercurl = true })
	hi("DiagnosticUnderlineWarn", { sp = p.orange, undercurl = true })
	hi("DiagnosticUnderlineInfo", { sp = p.cyan, undercurl = true })
	hi("DiagnosticUnderlineHint", { sp = p.cyan_dim, undercurl = true })

	-- Treesitter (basic)
	hi("@comment", { link = "Comment" })
	hi("@string", { link = "String" })
	hi("@number", { link = "Number" })
	hi("@boolean", { link = "Boolean" })
	hi("@constant", { link = "Constant" })
	hi("@constant.builtin", { fg = p.red })
	hi("@variable", { link = "Identifier" })
	hi("@variable.builtin", { fg = p.teal })
	hi("@function", { link = "Function" })
	hi("@function.builtin", { fg = p.cyan })
	hi("@constructor", { fg = p.purple })
	hi("@type", { link = "Type" })
	hi("@keyword", { link = "Keyword" })
	hi("@operator", { link = "Operator" })
	hi("@field", { fg = p.fg })
	hi("@property", { fg = p.yellow })
end

return M
