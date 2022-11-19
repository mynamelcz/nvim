require("plugins-setup") --  安装插件
require("core.options") -- 基本选项
require("core.keymaps") -- 按键映射
require("core.colorscheme") -- 主题设置
require("plugins.dashboard") -- 启动界面
require("plugins.nvim-surround") -- 成对添加,修改 “ ‘ （ 等
require("plugins.autopairs") -- 成对输入 ” ’ （ 等
require("plugins.leap") -- 快速跳转
require("plugins.comment") -- 注释
require("plugins.nvim-tree") -- 文件浏览器
require("plugins.lualine") -- 窗口下方文件信息显示
require("plugins.bufferline") -- 窗口上方显示文件名
require("plugins.telescope") -- 文件搜索
require("plugins.nvim-cmp") -- 快速补全
require("plugins.treesitter") -- 代码高亮
require("plugins.lsp.mason")
require("plugins.lsp.lspsaga")
require("plugins.lsp.lspconfig")
require("plugins.lsp.null-ls")

-- 自动命令
-- 保存init.lua 自动 source
local nvimrc = vim.api.nvim_create_augroup("NVIMRC", { clear = true })
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = "init.lua",
	group = nvimrc,
	command = "source %",
})
