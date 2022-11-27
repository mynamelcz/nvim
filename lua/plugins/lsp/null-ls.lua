local setup, null_ls = pcall(require, "null-ls")
if not setup then
	return
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local formatting = null_ls.builtins.formatting

null_ls.setup({
	sources = {
		formatting.prettier,
		formatting.black,
		formatting.gofmt,
		formatting.shfmt,
		formatting.clang_format,
		formatting.cmake_format,
		formatting.dart_format,
		formatting.stylua,
		formatting.isort,
		formatting.reorder_python_imports,
		formatting.codespell.with({ filetypes = { "markdown" } }),
	},

	-- configure format on save
	on_attach = function(current_client, bufnr)
		if current_client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						filter = function(client)
							--  only use null-ls for formatting instead of lsp server
							return client.name == "null-ls"
						end,
						bufnr = bufnr,
					})
				end,
			})
		end
	end,
})
