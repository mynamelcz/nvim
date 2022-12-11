local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	print("nvim-tree not found!")
	return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
	sort_by = "case_sensitive",
	-- 不显示 git 状态图标
	git = {
		enable = false,
	},
	update_cwd = false,
	update_focused_file = {
		enable = false,
		update_cwd = false,
	},
	filters = {
		-- 隐藏 .文件
		--dotfiles = true,
		-- 隐藏 node_modules 文件夹
		-- custom = { "node_modules" },
	},
	view = {
		-- 宽度
		-- width = 40,
		-- 自动调整宽度
		adaptive_size = true,
		-- 显示的位置
		side = "left",
		-- 是否隐藏根目录
		hide_root_folder = false,
		mappings = {
			-- 只用内置快捷键
			-- custom_only = true,
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
		-- 不显示行数
		number = false,
		relativenumber = false,
		-- 显示图标
		signcolumn = "yes",
	},
	actions = {
		open_file = {
			-- 首次打开大小适配
			resize_window = true,
			-- 打开文件时关闭 tree
			quit_on_open = true,
		},
	},
	-- wsl install -g wsl-open
	-- https://github.com/4U6U57/wsl-open/
	-- system_open = {
	-- 	-- mac
	-- 	-- cmd = "open",
	-- 	-- -- windows
	-- 	-- cmd = "wsl-open",
	-- },
})

-- -- 列表快捷键
-- pluginKeys.nvimTreeList = { -- 打开文件或文件夹
--   { key = { '<CR>', 'o', '<2-LeftMouse>' }, action = 'edit' },
--   -- v分屏打开文件
--   { key = 'v', action = 'vsplit' },
--   -- b分屏打开文件
--   { key = 'b', action = 'split' },
--   -- Ignore (node_modules)
--   { key = 'i', action = 'toggle_ignored' },
--   { key = '.', action = 'toggle_dotfiles' },
--   -- Hide (dotfiles)
--   { key = 'R', action = 'refresh' },
--   -- 文件操作
--   { key = 'a', action = 'create' },
--   { key = 'd', action = 'remove' },
--   { key = 'r', action = 'rename' },
--   { key = 'x', action = 'cut' },
--   { key = 'c', action = 'copy' },
--   { key = 'p', action = 'paste' },
--   { key = 'y', action = 'copy_name' },
--   { key = 'Y', action = 'copy_path' },
--   { key = 'gy', action = 'copy_absolute_path' },
--   { key = 'I', action = 'toggle_file_info' },
--   -- { key = 'n', action = 'tabnew' },
--   -- 进入下一级
--   { key = { 'n' }, action = 'cd' },
--   -- 进入上一级
--   { key = { 'N' }, action = 'dir_up' },
-- }
