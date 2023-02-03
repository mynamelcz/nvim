local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
	print("not found cmp!")
	return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
	print("not found luasnit!")
	return
end

require("luasnip/loaders/from_vscode").lazy_load()

-- vim.opt.completeopt = "menu,menuone,noselect"
cmp.setup({
	completion = {
		-- completeopt = "menu,menuone,noinsert",
		completeopt = "menu,menuone,noselect",
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<Tab>"] = cmp.mapping.select_next_item(), -- next suggestion
		["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
		["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
		["<C-e>"] = cmp.mapping.abort(), -- close completion window
		["<CR>"] = cmp.mapping.confirm({ select = false }),
	}),
	-- sources for autocompletion
	sources = cmp.config.sources({
		{ name = "buffer" }, -- text within current buffer
		{ name = "nvim_lsp" }, -- lsp
		{ name = "luasnip" }, -- snippets
		{ name = "nvim_lsp_signature_help" },
		{ name = "path" }, -- file system paths
	}),
	formatting = require("plugins.lsp.ui").formatting,
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "cmdline" },
	}),
})
