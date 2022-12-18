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
