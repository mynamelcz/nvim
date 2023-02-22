local mason_status, mason = pcall(require, "mason")
if not mason_status then
	print("mason not found!")
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	print("mason_lspconfig not found!")
	return
end

-- import mason-null-ls plugin safely
-- local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
-- if not mason_null_ls_status then
-- 	return
-- end
--
mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		"tsserver",
		"lua_ls",
		"html",
		"emmet_ls",
		"jsonls",
		"pyright",
		"rust_analyzer",
	},
	automatic_installation = true, -- not the same as ensure_installed
})

-- mason_null_ls.setup({
-- 	-- list of formatters & linters for mason to install
-- 	ensure_installed = {
-- 		-- "cpplint",
-- 		"clang_format",
-- 		"prettier",
-- 		"stylua",
-- 		"markdownlint",
-- 		"pylint",
-- 		"eslint_d",
-- 	},
-- 	-- auto-install configured formatters & linters (with null-ls)
-- 	automatic_installation = true,
-- })
