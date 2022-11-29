--  <c> : Ctrl
--  <spcse> : 空格
--  <a> : Alt
--  <bs>

--- keymapping ---
local opts = {
    noremap = true, -- 禁止递归
    silent = false, -- 显示命令
}
local keymap = vim.api.nvim_set_keymap
--leaderkey
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "

-- magic search
keymap("n", "/", "/\\v", opts)
keymap("v", "/", "/\\v", opts)

-- Normal 模式禁止上使用 上下左右方向键
keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)

-- 切换窗口
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-k>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- 终端模式下 切换窗口
keymap("t", "<C-h>", "<Cmd> wincmd h<cr>", opts)
keymap("t", "<C-j>", "<Cmd> wincmd j<cr>", opts)
keymap("t", "<C-k>", "<Cmd> wincmd k<cr>", opts)
keymap("t", "<C-l>", "<Cmd> wincmd l<cr>", opts)

keymap("n", "<C-a>", "ggVG$", opts) -- 全选

keymap("n", "x", '"_x', opts) -- 使用x删除时不会覆盖寄存器
-- 切换buff
keymap("n", "1", ":bNext<CR>", opts)
keymap("n", "2", ":bprevious<CR>", opts)

-- 调整窗口大小
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "<C-p>", "<C-a>", opts) -- 数字加
keymap("n", "<C-d>", "<C-x>", opts) -- 数字减
keymap("n", "<leader>w", ":w<CR>", opts) -- 保存文件
keymap("n", "<leader>q", ":Bdelete<CR>", opts) -- 关闭文件
keymap("n", "<leader>h", ":nohlsearch<CR>", opts) -- 清除搜索高亮

-- 编辑,重新载入vimrc，init.lua
--keymap("n", "<leader>ev",":vsplit $MYVIMRC<cr>", opts)
-- keymap("n", "<leader>sv", ":source $MYVIMRC<cr>", opts)

-- 光标移动
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)

keymap("i", "jj", "<ESC>", opts) -- 退出insert模式

--- 插入模式移动光标
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-j>", "<Up>", opts)
keymap("i", "<C-k>", "<Down>", opts)
keymap("i", "<C-l>", "<Right>", opts)
keymap("i", "<C-d>", "<Backspace>", opts) -- 删除键

-- 改变缩进后，gv 重新选中原来选中的部分
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)
keymap("v", "p", '"_dP', opts)
keymap("v", "<C-c>", "ygv", opts)

-- 退出
keymap("n", "wq", ":wq<CR>", opts)

-- 移动文本
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
--------------------------------------------------
--              Plugins Keymaps                 --
--------------------------------------------------
-- Dashboard

--[[插件名: Dashboard ]]
keymap("n", "<leader>a", ":Dashboard<cr>", opts)
--[[插件名: vim-maximizer ]]
keymap("n", "<leader>sm", ":MaximizerToggle<cr>", opts) -- 最大化当前窗口
--[[插件名: nvim-tree ]]
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
--[[插件名: telescope ]]
keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts) -- 查找文件
keymap("n", "<leader>fs", ":Telescope live_grep<cr>", opts) -- 正则查找
keymap("n", "<leader>fc", ":Telescope grep_string<cr>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<cr>", opts)
keymap("n", "<leader>fr", ":Telescope oldfiles<cr>", opts)
keymap("n", "<leader>fp", ":Telescope projects<cr>", opts)

--[[插件名: tagbar ]]
keymap("n", "<leader>t", ":Tagbar:<cr>", opts)
--[[插件名: lf ]]
vim.g.lf_map_keys = 0
--[[    插件名:nvim-surround

    Old text                    Command         New text
--------------------------------------------------------------------------------
    surround_words             ysiw)           (surround_words)
    make strings               ys$"            "make strings"
    [delete around me!]        ds]             delete around me!
    remove <b>HTML tags</b>    dst             remove HTML tags
    'change quotes'            cs'"            "change quotes"
    <b>or tag types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(function calls)     dsf             function calls
 ]]

--[[    插件名: ReplaceWithRegister 用寄存器内容替换所选

[count]["x]gr{motion}   Replace {motion} text with the contents of register x.
                        Especially when using the unnamed register, this is
                        quicker than "_d{motion}P or "_c{motion}<C-R>"
[count]["x]grr          Replace [count] lines with the contents of register x.
                        To replace from the cursor position to the end of the
                        line use ["x]gr$
{Visual}["x]gr          Replace the selection with the contents of register x.
 ]]

--[[    插件名: Comment.nvim 
# Linewise

`gcw` - Toggle from the current cursor position to the next word
`gc$` - Toggle from the current cursor position to the end of line
`gc}` - Toggle until the next blank line
`gc5j` - Toggle 5 lines after the current cursor position
`gc8k` - Toggle 8 lines before the current cursor position
`gcip` - Toggle inside of paragraph
`gca}` - Toggle around curly brackets

# Blockwise

`gb2}` - Toggle until the 2 next blank line
`gbaf` - Toggle comment around a function (w/ LSP/treesitter support)
`gbac` - Toggle comment around a class (w/ LSP/treesitter support)
 ]]
