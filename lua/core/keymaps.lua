--  <c> : Ctrl
--  <spcse> : 空格
--  <a> : Alt
--  <bs>

--- keymapping ---
local opts = {
	noremap = true, -- 禁止递归
	silent = true, -- 显示命令
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
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- 终端模式下 切换窗口
keymap("t", "<C-h>", "<Cmd> wincmd h<cr>", opts)
keymap("t", "<C-j>", "<Cmd> wincmd j<cr>", opts)
keymap("t", "<C-k>", "<Cmd> wincmd k<cr>", opts)
keymap("t", "<C-l>", "<Cmd> wincmd l<cr>", opts)
-- 全选
keymap("n", "<C-a>", "ggVG$", opts)
-- 使用x删除时不会覆盖寄存器
keymap("n", "x", '"_x', opts)

-- 切换buff
keymap("n", "<A-h>", ":bprevious<CR>", opts)
keymap("n", "<A-l>", ":bnext<CR>", opts)

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

-- 光标移动
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)

keymap("i", "jj", "<ESC>", opts) -- 退出insert模式

--- 插入模式移动光标
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-l>", "<Right>", opts)
keymap("i", "<C-d>", "<Backspace>", opts) -- 删除键

-- 改变缩进后，gv 重新选中原来选中的部分
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

keymap("v", "p", '"_dP', opts)
-- 复制
keymap("v", "<C-c>", "ygv", opts)

-- 退出
keymap("n", "qq", ":wq<CR>", opts)

-- 移动文本
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- cscope
vim.cmd([[
  function! QuickFixToggle()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
      copen
    else
      cclose
    endif
  endfunction
]])
keymap("n", "<F1>", ":call QuickFixToggle()<cr>", opts)

--------------------------------------------------
--              Plugins Keymaps                 --
--------------------------------------------------
--[[插件名: Dashboard ]]
keymap("n", "<leader>a", ":Alpha<cr>", opts)
--[[插件名: vim-maximizer ]]
keymap("n", "<leader>m", ":MaximizerToggle<cr>", opts) -- 最大化当前窗口
--[[插件名: nvim-tree ]]
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
--[[插件名:  BufOnly]]
keymap("n", "<leader>x", ":BufOnly<cr>", opts)
--[[插件名: telescope ]]
keymap(
	"n",
	"<leader>ff",
	"<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
	opts
) -- 查找文件

keymap(
	"n",
	"<leader>b",
	"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",
	opts
)
keymap(
	"n",
	"<leader>fr",
	"<cmd>lua require('telescope.builtin').oldfiles(require('telescope.themes').get_dropdown{previewer = false})<cr>",
	opts
)
keymap("n", "<leader>fs", ":Telescope live_grep theme=ivy<cr>", opts) -- 正则查找
keymap("n", "<leader>fc", ":Telescope grep_string theme=ivy<cr>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<cr>", opts)
keymap("n", "<leader>fp", ":Telescope persisted<cr>", opts)
-- telescope git commands
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", opts) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", opts) -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap("n", "<leader>gs", "<cmd>Telescope git_status<cr>", opts) -- list current changes per file with diff preview ["gs" for git status]

--[[插件名: tagbar ]]
keymap("n", "tl", ":Tagbar<cr>", opts)

--[[插件名: persisted 会话管理
<CR> - Source the session file  -- telescope
<C-d> - Delete the session file -- telescope
:SessionToggle - Determines whether to load, start or stop a session
:SessionStart - Start recording a session. Useful if autosave = false
:SessionStop - Stop recording a session
:SessionSave - Save the current session
:SessionLoad - Load the session for the current directory and current branch if git_use_branch = true
:SessionLoadLast - Load the last session
:SessionDelete - Delete the current session
Note: The author only binds :SessionToggle to a keymap for simplicity.
--]]

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
