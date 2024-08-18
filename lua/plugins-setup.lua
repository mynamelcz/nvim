local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")
lazy.setup({
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	"folke/neodev.nvim",
	"moll/vim-bbye",
	---------------------基本api---------------------
	"nvim-lua/plenary.nvim",
	---------------------启动时间---------------------
	{ "dstein64/vim-startuptime", cmd = "StartupTime" },
	---------------------Buffer Only---------------------
	{ "numtostr/BufOnly.nvim", cmd = "BufOnly" },
	---------------------启动界面---------------------
	"goolord/alpha-nvim",
	---------------------弹窗窗口---------------------
	"rcarriga/nvim-notify",
	---------------------最大化当前窗口---------------------
	"szw/vim-maximizer",
	---------------------主题设置---------------------
	"sainnhe/everforest",
	"EdenEast/nightfox.nvim",
	"Mofiqul/vscode.nvim",
	"folke/tokyonight.nvim",
	"ellisonleao/gruvbox.nvim",
	---------------------文件浏览---------------------
	"nvim-tree/nvim-tree.lua",
	---------------------文件图标---------------------
	"kyazdani42/nvim-web-devicons",
	---------------------上下状态栏---------------------
	"akinsho/bufferline.nvim",
	"nvim-lualine/lualine.nvim",
	---------------------搜索替换---------------------
	"nvim-pack/nvim-spectre",
	-- "MagicDuck/grug-far.nvim",
	---------------------多光标---------------------
	"mg979/vim-visual-multi",
	---------------------数据递增---------------------
	"triglav/vim-visual-increment",
	---------------------自动更新文件---------------------
	"djoshea/vim-autoread",
	---------------------文本对齐---------------------
	{
		"Vonr/align.nvim",
		branch = "v2",
		lazy = true,
		init = function()
			-- Create your mappings here
		end,
	},
	---------------------搜索弹窗---------------------
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{ "nvim-lua/popup.nvim" },
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			{ "nvim-telescope/telescope-live-grep-args.nvim" },
			{ "nvim-telescope/telescope-hop.nvim" },
			{ "nvim-telescope/telescope-project.nvim" },
			{ "nvim-telescope/telescope-media-files.nvim" },
			{ "nvim-telescope/telescope-dap.nvim" },
			{ "benfowler/telescope-luasnip.nvim" },
		},
	},
	---------------------命   令   行---------------------
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	---------------------会话管理---------------------
	"olimorris/persisted.nvim",
	---------------------缩进线---------------------
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	---------------------注    释---------------------
	"numToStr/Comment.nvim",
	---------------------TODO---------------------
	"folke/todo-comments.nvim",
	---------------------GIT 提示---------------------
	"lewis6991/gitsigns.nvim", -- 左则git提示
	---------------------跳     转---------------------
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		--@type Flash.Config
		opts = {},
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{
				"S",
				mode = { "n", "o", "x" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
			{
				"r",
				mode = "o",
				function()
					require("flash").remote()
				end,
				desc = "Remote Flash",
			},
			{
				"R",
				mode = { "o", "x" },
				function()
					require("flash").treesitter_search()
				end,
				desc = "Treesitter Search",
			},
			{
				"<c-s>",
				mode = { "c" },
				function()
					require("flash").toggle()
				end,
				desc = "Toggle Flash Search",
			},
		},
	},
	---------------------括号补全---------------------
	"windwp/nvim-autopairs",
	"kylechui/nvim-surround",
	---------------------快速替换---------------------
	"vim-scripts/ReplaceWithRegister",
	---------------------终    端---------------------
	{ "akinsho/toggleterm.nvim", version = "v2.*" },
	---------------------LSP---------------------
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"nvimdev/lspsaga.nvim",
	"onsails/lspkind.nvim",
	"jayp0521/mason-null-ls.nvim",
	-- 补全引擎
	"hrsh7th/nvim-cmp",
	-- 补全源
	"hrsh7th/cmp-vsnip",
	"hrsh7th/cmp-buffer", -- { name = 'buffer' },
	"hrsh7th/cmp-path", -- { name = 'path' }
	"hrsh7th/cmp-cmdline", -- { name = 'cmdline' }
	"hrsh7th/cmp-nvim-lsp-signature-help", -- { name = 'nvim_lsp_signature_help' }
	-- 代码段补全
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
	},
	"saadparwaiz1/cmp_luasnip", -- for autocompletion
	"rafamadriz/friendly-snippets", -- useful snippets
	-- 代码格式化
	"mhartington/formatter.nvim",
	-- hint
	{
		"felpafel/inlay-hint.nvim",
		event = "LspAttach",
		config = true,
	},
	---------------------显示错误列表---------------------
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},
	---------------------tag 列表---------------------
	-- "preservim/tagbar",
	---------------------语法高亮---------------------
	-- 	"nvim-treesitter/nvim-treesitter",
	---------------------彩色括号---------------------
	-- "p00f/nvim-ts-rainbow",
})
