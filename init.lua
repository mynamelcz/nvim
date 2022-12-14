--  安装插件
require("plugins-setup")
-- 主题设置
require("core.colorscheme")
-- 基本选项
require("core.options")
-- 按键映射
require("core.keymaps")
-- 启动界面
require("plugins.alpha")
-- 终端
require("plugins.toggleterm")
-- 弹窗提示
require("plugins.nvim-notify")
-- 缩进线
require("plugins.indent-blankline")
-- 语法高亮
require("plugins.treesitter")
-- 括号补全
require("plugins.autopairs")
require("plugins.nvim-surround")
-- 注释
require("plugins.comment")
-- 快速定位光标
require("plugins.flit")
require("plugins.leap")
-- 文件浏览
require("plugins.nvim-tree")
-- 状态栏
require("plugins.lualine")
require("plugins.bufferline")
-- 文件搜索
require("plugins.telescope")
-- 自动补全
require("plugins.lsp.nvim-cmp")

-- LSP
require("plugins.lsp.mason")
require("plugins.lsp.lspconfig")
require("plugins.lsp.formatter")
require("plugins.lsp.ui")

-- 自动命令
require("core.autocmd")
require("core.cscope")
