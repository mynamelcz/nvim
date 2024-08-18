local status, persisted = pcall(require, "persisted")
if not status then
	print("persisted not found!")
	return
end
-- require("telescope").load_extension("persisted") -- To load the telescope extension
-- persisted.setup({
-- 	save_dir = vim.fn.expand(vim.fn.stdpath("data") .. "/sessions/"), -- directory where session files are saved
-- 	command = "VimLeavePre", -- the autocommand for which the session is saved
-- 	silent = false, -- silent nvim message when sourcing session file
-- 	use_git_branch = false, -- create session files based on the branch of the git enabled repository
-- 	autosave = false, -- automatically save session files when exiting Neovim
-- 	should_autosave = nil, -- function to determine if a session should be autosaved
-- 	autoload = false, -- automatically load the session for the cwd on Neovim startup
-- 	on_autoload_no_session = nil, -- function to run when `autoload = true` but there is no session to load
-- 	follow_cwd = true, -- change session file name to match current working directory if it changes
-- 	allowed_dirs = nil, -- table of dirs that the plugin will auto-save and auto-load from
-- 	ignored_dirs = nil, -- table of dirs that are ignored when auto-saving and auto-loading
-- 	before_save = nil, -- function to run before the session is saved to disk
-- 	after_save = nil, -- function to run after the session is saved to disk
-- 	after_source = nil, -- function to run after the session is sourced
-- 	telescope = {
-- 		reset_prompt_after_deletion = true, -- whether to reset prompt after session deleted
-- 	},
-- })

persisted.setup({
	autostart = true, -- Automatically start the plugin on load?

	-- Function to determine if a session should be saved
	---@type fun(): boolean
	should_save = function()
		return true
	end,

	save_dir = vim.fn.expand(vim.fn.stdpath("data") .. "/sessions/"), -- Directory where session files are saved

	follow_cwd = true, -- Change the session file to match any change in the cwd?
	use_git_branch = false, -- Include the git branch in the session file name?
	autoload = false, -- Automatically load the session for the cwd on Neovim startup?

	-- Function to run when `autoload = true` but there is no session to load
	---@type fun(): any
	on_autoload_no_session = function() end,

	allowed_dirs = {}, -- Table of dirs that the plugin will start and autoload from
	ignored_dirs = {}, -- Table of dirs that are ignored for starting and autoloading

	telescope = {
		mappings = { -- Mappings for managing sessions in Telescope
			copy_session = "<C-c>",
			change_branch = "<C-b>",
			delete_session = "<C-d>",
		},
		icons = { -- icons displayed in the Telescope picker
			selected = " ",
			dir = "  ",
			branch = " ",
		},
	},
})

local group = vim.api.nvim_create_augroup("PersistedHooks", {})

vim.api.nvim_create_autocmd({ "User" }, {
	pattern = "PersistedTelescopeLoadPre",
	group = group,
	callback = function()
		vim.api.nvim_input("<ESC>:%bd!<CR>")
	end,
})
