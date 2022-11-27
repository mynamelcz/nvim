--  安装插件
require("plugins-setup")
-- 主题设置
require("core.colorscheme")
-- 基本选项
require("core.options")
-- 按键映射
require("core.keymaps")
-- 启动界面
require("plugins.dashboard")
-- 终端
require("plugins.toggleterm")
-- 弹窗提示
require("plugins.nvim-notify")
require("plugins.popup")
-- 缩进线
require("plugins.indent-blankline")
-- 语法高亮
require("plugins.treesitter")
-- 括号补全
require("plugins.autopairs")
require("plugins.nvim-surround")
-- 注释
require("plugins.comment")
-- 文件浏览
require("plugins.nvim-tree")
-- 状态栏
require("plugins.lualine")
require("plugins.bufferline")
-- 文件搜索
require("plugins.telescope")
-- 代码高亮
require("plugins.treesitter")
-- 自动补全
require("plugins.nvim-cmp")

require("plugins.lsp.mason")
require("plugins.lsp.lspsaga")
require("plugins.lsp.lspconfig")
require("plugins.lsp.null-ls")

-- 自动命令
require("core.autocmd")
