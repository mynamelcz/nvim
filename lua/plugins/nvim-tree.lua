local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	print("nvim-tree not found!")
	return
end

nvimtree.setup({
	-- 完全禁止内置netrw
	disable_netrw = true,
	-- 不显示 git 状态图标
	git = {
		enable = false,
	},
	-- project plugin 需要这样设置
	update_cwd = false,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	filters = {
		-- 隐藏 .文件
		--dotfiles = true,
		-- 隐藏 node_modules 文件夹
		-- custom = { "node_modules" },
	},
	view = {
		-- 宽度
		width = 23,
		-- 也可以 'right'
		side = "left",
		-- 隐藏根目录
		hide_root_folder = false,
		-- 自定义列表中快捷键
		-- mappings = {
		-- 	-- 只用内置快捷键
		-- 	custom_only = true,
		-- 	list = KEYMAPS,
		-- },
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
	system_open = {
		-- mac
		cmd = "open",
		-- windows
		-- cmd = "wsl-open",
	},
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
