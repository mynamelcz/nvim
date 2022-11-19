local opt = vim.opt

opt.encoding = "utf-8" -- UTF-8
opt.fileencoding = "utf-8" -- UTF-8
opt.number = true -- 行号
opt.relativenumber = false -- 相对行号
opt.tabstop = 4 -- tab 缩进4个空格
opt.shiftwidth = 4 -- tab 缩进4个空格
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true --
opt.wrap = false --
opt.ignorecase = true -- 搜索大小写不敏感
opt.smartcase = true -- 若包含大写字母则只匹配大写
opt.cursorline = true -- 高亮光标所在行
opt.signcolumn = "yes" --
opt.mouse = "a" -- 设置鼠标在所有模式下都可以使用
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
opt.clipboard:append("unnamedplus") -- use system clipboard as default register
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
opt.iskeyword:append("-") -- consider string-string as whole word
opt.history = 100 -- 历史命令条数
opt.showtabline = 2 -- 永远显示tabline(窗口上方的文件名)
opt.termguicolors = true -- 使能样式设置
opt.timeoutlen = 300 -- 命令超时时间 单位ms
opt.updatetime = 100 -- 无操作时交换文件刷写到磁盘的时间
opt.wrap = true -- 允许换行显示
opt.syntax = "enable" -- 语法高亮
opt.backup = false -- 是否开启文件备份
opt.swapfile = false -- 是否开启交换文件

--opt.guifont = 'UbuntuMono Nerd Font:h16'
