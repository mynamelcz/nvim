local opt = vim.opt

opt.encoding = "utf-8" -- UTF-8
opt.fileencoding = "utf-8" -- UTF-8
opt.number = true -- 行号
opt.relativenumber = false -- 相对行号
opt.tabstop = 4 -- tab 缩进4个空格
opt.shiftwidth = 4 -- tab 缩进4个空格
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true --
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
opt.updatetime = 300 -- 无操作时交换文件刷写到磁盘的时间
opt.wrap = true -- 允许换行显示
opt.syntax = "enable" -- 语法高亮
opt.backup = false -- 是否开启文件备份
opt.swapfile = false -- 是否开启交换文件
opt.writebackup = false
-- -- jkhl 移动时光标周围保留8行
-- -- vim.o.scrolloff = 8
-- -- vim.o.sidescrolloff = 8
-- vim.o.shiftround = true
-- -- 当文件被外部程序修改时，自动加载
-- vim.o.autoread = true
-- vim.bo.autoread = true
-- -- 是否显示不可见字符
-- vim.o.list = true
-- -- 补全增强
-- vim.o.wildmenu = true
-- -- Dont' pass messages to |ins-completin menu|
-- vim.o.shortmess = vim.o.shortmess .. "c"
-- -- 补全最多显示10行
-- vim.o.pumheight = 10
--
-- vim.o.statusline = vim.o.statusline .. "%f"
-- vim.o.laststatus = 2

-- opt = {
-- 	backspace = vim.opt.backspace + { "nostop" }, -- Don't stop backspace at insert
-- 	clipboard = "unnamedplus", -- Connection to the system clipboard
-- 	cmdheight = 0, -- hide command line unless needed
-- 	completeopt = { "menuone", "noselect" }, -- Options for insert mode completion
-- 	copyindent = true, -- Copy the previous indentation on autoindenting
-- 	cursorline = true, -- Highlight the text line of the cursor
-- 	expandtab = true, -- Enable the use of space in tab
-- 	fileencoding = "utf-8", -- File content encoding for the buffer
-- 	fillchars = { eob = " " }, -- Disable `~` on nonexistent lines
-- 	history = 100, -- Number of commands to remember in a history table
-- 	ignorecase = true, -- Case insensitive searching
-- 	laststatus = 3, -- globalstatus
-- 	lazyredraw = true, -- lazily redraw screen
-- 	mouse = "a", -- Enable mouse support
-- 	number = true, -- Show numberline
-- 	preserveindent = true, -- Preserve indent structure as much as possible
-- 	pumheight = 10, -- Height of the pop up menu
-- 	relativenumber = true, -- Show relative numberline
-- 	scrolloff = 8, -- Number of lines to keep above and below the cursor
-- 	shiftwidth = 2, -- Number of space inserted for indentation
-- 	showmode = false, -- Disable showing modes in command line
-- 	showtabline = 2, -- always display tabline
-- 	sidescrolloff = 8, -- Number of columns to keep at the sides of the cursor
-- 	signcolumn = "yes", -- Always show the sign column
-- 	smartcase = true, -- Case sensitivie searching
-- 	splitbelow = true, -- Splitting a new window below the current one
-- 	splitright = true, -- Splitting a new window at the right of the current one
-- 	swapfile = false, -- Disable use of swapfile for the buffer
-- 	tabstop = 2, -- Number of space in a tab
-- 	termguicolors = true, -- Enable 24-bit RGB color in the TUI
-- 	timeoutlen = 300, -- Length of time to wait for a mapped sequence
-- 	undofile = true, -- Enable persistent undo
-- 	updatetime = 300, -- Length of time to wait before triggering the plugin
-- 	wrap = false, -- Disable wrapping of lines longer than the width of window
-- 	writebackup = false, -- Disable making a backup before overwriting a file
-- }
-- g = {
-- 	highlighturl_enabled = true, -- highlight URLs by default
-- 	mapleader = " ", -- set leader key
-- 	zipPlugin = false, -- disable zip
-- 	load_black = false, -- disable black
-- 	loaded_2html_plugin = true, -- disable 2html
-- 	loaded_getscript = true, -- disable getscript
-- 	loaded_getscriptPlugin = true, -- disable getscript
-- 	loaded_gzip = true, -- disable gzip
-- 	loaded_logipat = true, -- disable logipat
-- 	loaded_matchit = true, -- disable matchit
-- 	loaded_netrwFileHandlers = true, -- disable netrw
-- 	loaded_netrwPlugin = true, -- disable netrw
-- 	loaded_netrwSettngs = true, -- disable netrw
-- 	loaded_remote_plugins = true, -- disable remote plugins
-- 	loaded_tar = true, -- disable tar
-- 	loaded_tarPlugin = true, -- disable tar
-- 	loaded_zip = true, -- disable zip
-- 	loaded_zipPlugin = true, -- disable zip
-- 	loaded_vimball = true, -- disable vimball
-- 	loaded_vimballPlugin = true, -- disable vimball
-- 	autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
-- 	cmp_enabled = true, -- enable completion at start
-- 	autopairs_enabled = true, -- enable autopairs at start
-- 	diagnostics_enabled = true, -- enable diagnostics at start
-- 	status_diagnostics_enabled = true, -- enable diagnostics in statusline
-- 	icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available)
-- }
