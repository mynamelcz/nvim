--- keymapping --- 
local opts = {
	noremap = true,				-- 禁止递归
	silent = false				-- 显示命令
}
local keymap = vim.api.nvim_set_keymap

--leaderkey 
vim.g.mapleader = " "
vim.g.maplocallleader = " "

-- Normal 模式禁止上使用 上下左右方向键
keymap("n", "<Up>",		"<Nop>", opts)
keymap("n", "<Down>",	"<Nop>", opts)
keymap("n", "<Left>",	"<Nop>", opts)
keymap("n", "<Right>",	"<Nop>", opts)

-- 切换窗口
keymap("n", "<C-h>", "<C-w>h", opts)	
keymap("n", "<C-j>", "<C-w>j", opts)	
keymap("n", "<C-k>", "<C-k>h", opts)	
keymap("n", "<C-l>", "<C-w>l", opts)	

-- 切换buff 
keymap("n", "1", ":bNext<CR>", opts)	
keymap("n", "2", ":bprevious<CR>", opts)	

-- 调整窗口大小
keymap("n", "<C-Up>", 	":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>",":vertical resize +2<CR>", opts)


keymap("n", "<leader>w", ":w<CR>", opts)			-- 保存文件
keymap("n", "<leader>q", ":wq<CR>", opts)			-- 关闭文件

keymap("n", "<leader>h", ":nohlsearch<CR>", opts) 	-- 关闭搜索高亮

-- 编辑,重新载入vimrc，init.lua
keymap("n", "<leader>ev",":vsplit $MYVIMRC<cr>", opts)
keymap("n", "<leader>sv",":source $MYVIMRC<cr>", opts)

-- 光标移动
keymap("n", "J", "5j", opts)	 
keymap("n", "K", "5k", opts)	
keymap("n", "H", "^", opts)	 
keymap("n", "L", "$", opts)	 

keymap("i", "<Backspace>","<Nop>", opts)	-- insaert模式禁用Bsp按键
keymap("i", "jj", "<ESC>", opts)			-- 退出insert模式 

--- 插入模式移动光标
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-j>", "<Up>", opts)
keymap("i", "<C-k>", "<Down>", opts)
keymap("i", "<C-l>", "<Right>", opts)

keymap("i", "<C-g>", "<C-h>", opts)

-- 改变缩进后，gv 重新选中原来选中的部分 
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)
keymap("v", "p", '"_dP', opts)
keymap("v", "<C-c>", 'ygv', opts)
