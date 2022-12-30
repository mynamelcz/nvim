local status, telescope = pcall(require, "telescope")
if not status then
	print("telescope not found!")
	return
end

local actions_status, actions = pcall(require, "telescope.actions")
if not actions_status then
	print("telescope.actions not found!")
	return
end

local previewers = require("telescope.previewers")
local Job = require("plenary.job")
local new_maker = function(filepath, bufnr, opts)
	filepath = vim.fn.expand(filepath)
	Job:new({
		command = "file",
		args = { "--mime-type", "-b", filepath },
		on_exit = function(j)
			local mime_type = vim.split(j:result()[1], "/")[1]
			if mime_type == "text" then
				previewers.buffer_previewer_maker(filepath, bufnr, opts)
			else
				-- maybe we want to write something to the buffer here
				vim.schedule(function()
					vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "BINARY" })
				end)
			end
		end,
	}):sync()
end

telescope.setup({
	defaults = {
		-- 搜索时忽略指定的文件
		file_ignore_patterns = {
			"tags",
			"cscope.out",
			"cscope.in.out",
			"cscope.po.out",
			"compile_commands.json",
		},
		layout_config = { width = 0.98, preview_cutoff = 1 },
		mappings = {
			i = {
				-- 上下移动
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				-- 关闭窗口
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
				-- 历史记录
				["<Down>"] = "cycle_history_next",
				["<Up>"] = "cycle_history_prev",
				-- 预览窗口上下滚动
				["<C-u>"] = "preview_scrolling_up",
				["<C-d>"] = "preview_scrolling_down",
			},
		},
	},

	pickers = {
		find_files = {
			--theme = "dropdown", -- 可选参数： dropdown, cursor, ivy
			preview = true,
		},
		-- live_grep = {
		-- 	theme = "ivy",
		-- 	preview = true,
		-- },
	},
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({
				-- even more opts
			}),
		},
	},
})

telescope.load_extension("file_browser")
telescope.load_extension("live_grep_args")
-- telescope.load_extension("fzf")
