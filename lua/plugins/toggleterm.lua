local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	print("toggleterm not found!")
	return
end

toggleterm.setup({
	open_mapping = [[<c-\>]],
	-- 打开新终端后自动进入插入模式
	start_in_insert = true,
	-- 在当前buffer的下方打开新终端
	direction = "horizontal", -- horizontal float tab vertical
})

--[[ local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "double",
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd("startinsert!")
  end,
})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true}) ]]
