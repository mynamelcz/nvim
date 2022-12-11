local colorscheme = "everforest"
-- everforest
-- tokyonight
-- OceanicNext
-- gruvbox
-- zephyr
-- nord
-- onedark
-- nightfox
-- default
-- dark_catppuccino
-- catppuccin

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme: " .. colorscheme .. " 没有找到！")
	return
end

vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha
require("catppuccin").setup({
	transparent_background = true,
	-- transparency = true,
	term_colors = false,
	compile = {
		enabled = false,
		path = vim.fn.stdpath("cache") .. "/catppuccin",
	},
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		-- For various plugins integrations see https://github.com/catppuccin/nvim#integrations
		markdown = true,
	},
	color_overrides = {},
	highlight_overrides = {},
})
