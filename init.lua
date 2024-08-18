-- 安装插件
require("plugins-setup")
-- 主题设置
require("core.colorscheme")
-- 基本选项
require("core.options")
-- 按键映射
require("core.keymaps")
-- 启动界面
require("plugins.alpha")
-- 会话管理
require("plugins.persisted")
-- 终端
require("plugins.toggleterm")
-- 命令行
require("plugins.noice")
-- 弹窗提示
require("plugins.nvim-notify")
-- 缩进线
require("plugins.indent-blankline")
-- 语法高亮
-- require("plugins.treesitter")
-- 括号补全
require("plugins.autopairs")
require("plugins.nvim-surround")
-- 注释
require("plugins.comment")
require("plugins.todo-comment")
-- 快速定位光标  flash 插件
-- 文件浏览
require("plugins.nvim-tree")
-- 状态栏
require("plugins.lualine")
require("plugins.bufferline")
-- 搜索替换
require("plugins.nvim-spectre")
-- 文件搜索
require("plugins.telescope")
-- GIT 状态显示
require("plugins.gitsigns")
-- 自动补全
require("plugins.lsp.nvim-cmp")
require("plugins.luasnip")
-- LSP
require("plugins.lsp.mason")
require("plugins.lsp.lspconfig")
require("plugins.lsp.formatter")
require("plugins.lsp.ui")
require("plugins.trouble")
-- 自动命令
require("core.autocmd")
