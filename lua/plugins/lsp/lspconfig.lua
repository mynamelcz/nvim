-- import lspconfig plugin safely
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end
-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
	return
end
local keymap = vim.keymap -- for conciseness

-- enable keybinds only for when lsp server available
local on_attach = function(client, bufnr)
	-- keybind options
	local opts = { noremap = true, silent = false, buffer = bufnr }
	-- 浮动终端
	-- keymap.set("n", "t", "<c->", "<cmd>Lspsaga term_toggle")
	-- finder
	keymap.set("n", "gf", "<cmd>Lspsaga finder<CR>", opts) -- show definition, references
	-- Code Actions
	keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
	-- 重命名
	keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", opts) -- smart rename

	-- 查看函数定义
	keymap.set("n", "ge", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
	keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>", opts) -- see definition and make edits in window
	-- 查看函数说明注释
	keymap.set("n", "gk", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
	-- 显示错误信息
	-- keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
	-- keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
	-- 显示函数变量列表
	keymap.set("n", "go", "<cmd>Lspsaga outline<CR>", opts) -- see outline on right hand side
	-- keymap.set("n", "gs", "<cmd>Lspsaga signature_help<CR>", opts)
	-- keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
	-- keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
	-- keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
	client.server_capabilities.document_formatting = false
	client.server_capabilities.document_range_formatting = false
end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- configure html server
lspconfig["html"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
-- configure emmet language server
lspconfig["emmet_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
})

-- configure lua server (with special settings)
lspconfig["lua_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = { -- custom settings for lua
		Lua = {
			-- make the language server recognize "vim" global
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				-- make language server aware of runtime files
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})
capabilities.offsetEncoding = { "utf-16" }
lspconfig["clangd"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	-- filetypes = { "c", "cpp", "objc", "objcpp" },
	single_file_support = true,
})

lspconfig["pyright"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	single_file_support = true,
})

lspconfig["rust_analyzer"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	single_file_support = true,
	settings = {
		["rust-analyzer"] = {},
	},
})
