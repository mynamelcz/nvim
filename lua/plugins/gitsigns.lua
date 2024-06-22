-- https://github.com/lewis6991/gitsigns.nvim
local status, gitsigns = pcall(require, "gitsigns")
if not status then
	vim.notify("没有找到 gitsigns")
	return
end

gitsigns.setup({
	signs = {
		add = { text = " " },
		change = { text = " " },
		delete = { text = " " },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
	},
})
