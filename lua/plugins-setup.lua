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
	--------------------- 基本api  ------------------
	"nvim-lua/plenary.nvim",
	--------------------- 启动时间 --------------------
	{ "dstein64/vim-startuptime", cmd = "StartupTime" },
	------------------ Buffer Only--------------------
	{ "numtostr/BufOnly.nvim", cmd = "BufOnly" },
	--------------------- 启动界面 --------------------
	"goolord/alpha-nvim",
	--------------------- 弹窗窗口 --------------------
	"rcarriga/nvim-notify",
	------------------ 最大化当前窗口 --------------------
	"szw/vim-maximizer",
	--------------------- 主题设置 --------------------
	"sainnhe/everforest",
	"EdenEast/nightfox.nvim",
	"Mofiqul/vscode.nvim",
	"folke/tokyonight.nvim",
	------------------ 文件浏览 -----------------
	"nvim-tree/nvim-tree.lua",
	------------------ 文件图标 -----------------
	"kyazdani42/nvim-web-devicons",
	------------------上下状态栏 ----------------
	"akinsho/bufferline.nvim",
	"nvim-lualine/lualine.nvim",
	------------------搜索替换   ----------------
	"windwp/nvim-spectre",
	------------------ 多光标  ---------------
	"mg979/vim-visual-multi",
	------------------ 搜索弹窗 ----------------
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
	---------------- markdown预览 -------------
	{
		"iamcco/markdown-preview.nvim",
		build = "cd app && npm install",
		ft = { "markdown" },
		-- commit = "02cc3874738bc0f86e4b91f09b8a0ac88aef8e96",
	},
	--------------- 命   令   行 --------------
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	---------------- 会话管理 --------------
	"olimorris/persisted.nvim",
	---------------- 语法高亮 -----------------
	"nvim-treesitter/nvim-treesitter",
	---------------- 彩色括号 -----------------
	"p00f/nvim-ts-rainbow",
	---------------- 缩进线   -----------------
	"lukas-reineke/indent-blankline.nvim",
	---------------- 注    释 -----------------
	"numToStr/Comment.nvim",

	----------------   TODO   -----------------
	"folke/todo-comments.nvim",

	---------------- GIT 提示  -----------------
	"lewis6991/gitsigns.nvim", -- 左则git提示
	---------------- 跳     转  -----------------
	"ggandor/flit.nvim",
	"ggandor/leap-ast.nvim",
	"ggandor/leap-spooky.nvim",
	"ggandor/leap.nvim",
	---------------- 括号补全 -----------------
	"windwp/nvim-autopairs",
	"kylechui/nvim-surround",
	---------------- 快速替换 -----------------
	"vim-scripts/ReplaceWithRegister",
	---------------- 终    端 -----------------
	{ "akinsho/toggleterm.nvim", version = "v2.*" },

	---------------- tag 列表 --------------------
	"preservim/tagbar",
	--------------------- LSP --------------------
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	{ "glepnir/lspsaga.nvim", event = "LspAttach" },
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
	"L3MON4D3/LuaSnip", -- snippet engine
	"saadparwaiz1/cmp_luasnip", -- for autocompletion
	"rafamadriz/friendly-snippets", -- useful snippets
	-- 代码格式化
	"mhartington/formatter.nvim",
	-- 显示错误列表
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({})
		end,
	},
	---------------- 自动更新文件 -----------------
	"djoshea/vim-autoread",
	---------------- 数据递增  -----------------
	"triglav/vim-visual-increment",
})
