local status, lualine = pcall(require, "lualine")
if not status then
	print("lualine not found!")
	return
end

local lualine_nightfly = require("lualine.themes.everforest")
lualine_nightfly.command = {
	a = {
		gui = "bold",
		-- 		bg = new_colors.yellow,
		-- 		fg = new_colors.black, -- black
	},
}
-- lualine 代码诊断图标显示有问题(显示为 口 )，直接去lualine源码定义图标的位置修改
lualine.setup({
	options = {
		theme = lualine_nightfly,
		icons_enabled = true,
	},
	extensions = { "nvim-tree", "toggleterm" },
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { { "filename", path = 1 } },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
})
