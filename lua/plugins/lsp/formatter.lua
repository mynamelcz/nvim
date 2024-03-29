local status, formatter = pcall(require, "formatter")
if not status then
	vim.notify("没有找到 formatter")
	return
end

local util = require("formatter.util")
formatter.setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			function()
				if util.get_current_buffer_file_name() == "xmake.lua" then
					return
				end
				return {
					exe = "stylua",
					args = {
						-- "--config-path "
						--   .. os.getenv("XDG_CONFIG_HOME")
						--   .. "/stylua/stylua.toml",
						"-",
					},
					stdin = true,
				}
			end,
		},
		c = {
			-- clang-format
			function()
				return {
					exe = "clang-format -style=Microsoft",
					-- args = {},
					args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
					stdin = true,
					-- try_node_modules = true,
					cwd = vim.fn.expand("%:p:h"), -- Run clang-format in cwd of the file.
				}
			end,
		},
		cpp = {
			-- clang-format
			function()
				return {
					exe = "clang-format -style=Microsoft",
					-- args = {},
					args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
					stdin = true,
					-- try_node_modules = true,
					cwd = vim.fn.expand("%:p:h"), -- Run clang-format in cwd of the file.
				}
			end,
		},
		python = {
			function()
				return {
					exe = "black", --yapf", -- "black",
					args = { "-" },
					stdin = true,
					-- try_node_modules = true,
				}
			end,
		},
		rust = {
			-- Rustfmt
			function()
				return {
					exe = "rustfmt",
					args = { "--emit=stdout" },
					stdin = true,
				}
			end,
		},
		javascript = {
			-- prettier
			function()
				return {
					exe = "prettier",
					args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
					stdin = true,
				}
			end,
		},
	},
})
