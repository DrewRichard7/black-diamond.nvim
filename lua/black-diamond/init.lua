-- lua/black-diamond/init.lua
local palette = require("black-diamond.palette")
local groups = require("black-diamond.groups")

local M = {}

function M.load()
	-- Clear existing highlights
	if vim.fn.has("nvim-0.8") == 1 then
		vim.cmd("highlight clear")
		if vim.fn.exists("syntax_on") == 1 then
			vim.cmd("syntax reset")
		end
	end

	vim.g.colors_name = "black-diamond"

	groups.setup(palette.colors)
end

return M
