------------------------------------
-- CSCOPE settings for nvim in lua
------------------------------------

if io.open("cscope.out", "r") ~= nil then
	-- use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
	vim.opt.cscopetag = true
	-- check cscope for definition of a symbol before checking ctags: set to 1
	-- if you want the reverse search order.
	vim.opt.csto = 0
	-- show msg when cscope db added
	vim.opt.cscopeverbose = true
	-- results in quickfix window
	vim.opt.cscopequickfix = "s-,g-,c-,t-,e-,f-,i-,d-,a-"
	-- add cscope database in current directory
	vim.cmd("cs add cscope.out")

	-- define key table for input strings
	local sym_map = {
		["s"] = "Find this symbol",
		["g"] = "Find this global defination",
		["c"] = "Find functions calling this function",
		["t"] = "Find this text string",
		["e"] = "Find this egrep pattern",
		["d"] = "Find functions called by this function",
		["a"] = "Find places where this symbol is assigned a value",
	}

	-- function to print xcscpoe.el like prompts
	cscope_search = function(operation, default_symbol)
		local new_symbol = vim.fn.input(sym_map[operation] .. " (default: '" .. default_symbol .. "'): ")
		if "" ~= new_symbol then
			vim.cmd(":cs find " .. operation .. " " .. new_symbol)
		else
			vim.cmd(":cs find " .. operation .. " " .. default_symbol)
		end
		vim.cmd("copen")
	end
	local opts = { noremap = true, silent = false }
	-- s: Find this C symbol                       查找符号出现的地方
	vim.api.nvim_set_keymap("n", "\\fs", [[<cmd>lua cscope_search('s', vim.fn.expand("<cword>"))<cr><cr>]], opts)
	-- g: Find this definition                     查找函数定义
	vim.api.nvim_set_keymap("n", "\\fg", [[<cmd>lua cscope_search('g', vim.fn.expand("<cword>"))<cr><cr>]], opts)
	-- c: Find functions calling this function     查找函数被调用的位置
	vim.api.nvim_set_keymap("n", "\\fc", [[<cmd>lua cscope_search('c', vim.fn.expand("<cword>"))<cr><cr>]], opts)
	-- t: Find this text string
	vim.api.nvim_set_keymap("n", "\\ft", [[<cmd>lua cscope_search('t', vim.fn.expand("<cword>"))<cr><cr>]], opts)
	-- e: Find this egrep pattern
	vim.api.nvim_set_keymap("n", "\\fe", [[<cmd>lua cscope_search('e', vim.fn.expand("<cword>"))<cr><cr>]], opts)
	-- d: Find functions called by this function
	vim.api.nvim_set_keymap("n", "\\fd", [[<cmd>lua cscope_search('d', vim.fn.expand("<cword>"))<cr><cr>]], opts)
	-- a: Find places where this symbol is assigned a value
	vim.api.nvim_set_keymap("n", "\\fa", [[<cmd>lua cscope_search('a', vim.fn.expand("<cword>"))<cr><cr>]], opts)
end
