local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	print("nvim-treesitter not found!")
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = { enable = true },
	ensure_installed = {
		"c",
		"python",
		"cmake",
		"make",
		"json",
		"html",
		"markdown",
		"bash",
		"lua",
		"vim",
	},
	-- auto install above language parsers
	auto_install = true,
})
