local status_ok, db = pcall(require, "dashboard")
if not status_ok then
	print("dashboard not found!")
	return
end

db.custom_header = {
	"   ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⣶⠶⣶⣤⣤⣀⠀⠀⠀⠀⠀⠀ ",
	" ⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⠁⠀⢀⠈⢿⢀⣀⠀⠹⣿⣿⣿⣦⣄⠀⠀⠀ ",
	" ⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⠿⠀⠀⣟⡇⢘⣾⣽⠀⠀⡏⠉⠙⢛⣿⣷⡖⠀ ",
	" ⠀⠀⠀⠀⠀⣾⣿⣿⡿⠿⠷⠶⠤⠙⠒⠀⠒⢻⣿⣿⡷⠋⠀⠴⠞⠋⠁⢙⣿⣄ ",
	" ⠀⠀⠀⠀⢸⣿⣿⣯⣤⣤⣤⣤⣤⡄⠀⠀⠀⠀⠉⢹⡄⠀⠀⠀⠛⠛⠋⠉⠹⡇ ",
	" ⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣼⣇⣀⣀⣀⣛⣛⣒⣲⢾⡷ ",
	" ⢀⠤⠒⠒⢼⣿⣿⠶⠞⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⣼⠃ ",
	" ⢮⠀⠀⠀⠀⣿⣿⣆⠀⠀⠻⣿⡿⠛⠉⠉⠁⠀⠉⠉⠛⠿⣿⣿⠟⠁⠀⣼⠃⠀ ",
	" ⠈⠓⠶⣶⣾⣿⣿⣿⣧⡀⠀⠈⠒⢤⣀⣀⡀⠀⠀⣀⣀⡠⠚⠁⠀⢀⡼⠃⠀⠀ ",
	" ⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣤⣭⣭⣭⣭⣭⣥⣤⣤⣤⣴⣟⠁    ",
}
db.custom_footer = nil

db.custom_center = {
	-- {
	-- icon = "  ",
	-- 	desc = "Recently lastest session    ",
	-- 	shortcut = "Leader s l",
	-- 	action = "Telescope oldfiles",
	-- },
	{
		icon = "  ",
		desc = "Recently opened files       ",
		shortcut = "Leader f r",
		action = "Telescope oldfiles",
	},
	{
		icon = "  ",
		desc = "Find File                   ",
		shortcut = "leader f f",
		action = "Telescope find_files",
	},
	{
		icon = "  ",
		desc = "Find Word                   ",
		shortcut = "leader f s",
		action = "Telescope live_grep",
	},
	{
		icon = "  ",
		desc = "Open Personal dotfiles      ",
		shortcut = "None     ",
		action = "edit $MYVIMRC",
	},
}
--        alpha_button("LDR f f", "  Find File  "),
--        alpha_button("LDR f o", "  Recents  "),
--        alpha_button("LDR f w", "  Find Word  "),
--        alpha_button("LDR f n", "  New File  "),
--        alpha_button("LDR f m", "  Bookmarks  "),
--        alpha_button("LDR S l", "  Last Session  "),
--
-- dashboard.section.buttons.val = {
-- 	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
-- 	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
-- 	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
-- 	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
-- 	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
-- 	dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
-- 	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
-- }
--
-- local function footer()
-- 	-- NOTE: requires the fortune-mod package to work
-- 	-- local handle = io.popen("fortune")
-- 	-- local fortune = handle:read("*a")
-- 	-- handle:close()
-- 	-- return fortune
-- 	return "chrisatmachine.com"
-- end
--
-- dashboard.section.footer.val = footer()
--
-- dashboard.section.footer.opts.hl = "Type"
-- dashboard.section.header.opts.hl = "Include"
-- dashboard.section.buttons.opts.hl = "Keyword"
--
-- dashboard.opts.opts.noautocmd = true
-- -- vim.cmd([[autocmd User AlphaReady echo 'ready']])
-- alpha.setup(dashboard.opts)
