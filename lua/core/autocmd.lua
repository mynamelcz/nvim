local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
	clear = true,
})

local autocmd = vim.api.nvim_create_autocmd

-- 保存init.lua 自动 source
autocmd({ "BufWritePost" }, {
	pattern = "init.lua",
	group = myAutoGroup,
	command = "source %",
})

-- 进入Terminal 自动进入插入模式
autocmd("TermOpen", {
	group = myAutoGroup,
	command = "startinsert",
})

-- 用o换行不要延续注释
autocmd("BufEnter", {
	group = myAutoGroup,
	pattern = "*",
	callback = function()
		vim.opt.formatoptions = vim.opt.formatoptions
			- "o" -- O and o, don't continue comments
			+ "r" -- But do continue when pressing enter.
	end,
})

autocmd("BufWritePost", {
	pattern = { "*.lua", "*.py", "*.sh", "*.c", "*.h" },
	group = myAutoGroup,
	command = "FormatWrite",
})
--- 重新打开缓冲区恢复光标位置
autocmd("BufReadPost", {
	pattern = "*",
	callback = function()
		if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
			vim.fn.setpos(".", vim.fn.getpos("'\""))
			vim.cmd("silent! foldopen")
		end
	end,
})

--- 运行当前python文件
autocmd("FileType", {
	pattern = "python",
	callback = function()
		local file_name = vim.fn.bufname()
		vim.api.nvim_buf_set_keymap(
			0,
			"n",
			"<F7>",
			":w<CR>:ToggleTerm<CR>cls<CR>python " .. file_name .. "<CR>",
			-- ":w<CR>:split<CR>:te time pyfile %<CR>",
			{ silent = true, noremap = true }
		)
	end,
})
