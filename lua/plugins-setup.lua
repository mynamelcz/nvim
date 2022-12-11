-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- add list of plugins to install
return packer.startup(function(use)
	-- packer can manage itself
	use("wbthomason/packer.nvim")
	use("moll/vim-bbye")
	--------------------- 基本api  ------------------
	use("nvim-lua/plenary.nvim")
	--------------------- 启动时间 --------------------
	use({ "dstein64/vim-startuptime", cmd = { "StartupTime" } })
	--------------------- 加速lua --------------------
	use("lewis6991/impatient.nvim")
	--------------------- 启动界面 --------------------
	use("glepnir/dashboard-nvim")
	--------------------- 弹窗窗口 --------------------
	-- use("nvim-lua/popup.nvim")
	use("rcarriga/nvim-notify")
	------------------ 最大化当前窗口 --------------------
	use("szw/vim-maximizer")
	--------------------- 主题设置 --------------------
	use("sainnhe/everforest")
	-- tokyonight
	use("folke/tokyonight.nvim")
	-- OceanicNext
	use("mhartington/oceanic-next")
	-- gruvbox
	use("ellisonleao/gruvbox.nvim")
	-- zephyr
	use("glepnir/zephyr-nvim")
	-- nord
	use("shaunsingh/nord.nvim")
	-- onedark
	use("ful1e5/onedark.nvim")
	-- nightfox
	use("EdenEast/nightfox.nvim")
	-- catppuccin
	use({ "catppuccin/nvim", as = "catppuccin" })
	-- vim-nightfly-guicolors
	use("bluz71/vim-nightfly-guicolors")
	-- vscode
	use("Mofiqul/vscode.nvim")
	------------------ 文件浏览 -----------------
	use("nvim-tree/nvim-tree.lua")
	------------------ 文件图标 -----------------
	use("kyazdani42/nvim-web-devicons")
	------------------上下状态栏 ----------------
	use("akinsho/bufferline.nvim")
	use("nvim-lualine/lualine.nvim")
	------------------ 搜索弹窗 ----------------
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-file-browser.nvim" })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use("nvim-telescope/telescope-live-grep-args.nvim")
	use("nvim-telescope/telescope-live-grep-raw.nvim")
	use("nvim-telescope/telescope-ui-select.nvim")
	use("nvim-telescope/telescope-rg.nvim")
	use("nvim-telescope/telescope-dap.nvim")
	---------------- markdown预览 -------------
	use("iamcco/markdown-preview.nvim")
	---------------- project管理 --------------
	use("ahmedkhalf/project.nvim")
	---------------- 语法高亮 -----------------
	use("nvim-treesitter/nvim-treesitter")
	---------------- 彩色括号 -----------------
	use("p00f/nvim-ts-rainbow")
	---------------- 缩进线   -----------------
	use("lukas-reineke/indent-blankline.nvim")
	---------------- 注    释 -----------------
	use("numToStr/Comment.nvim")
	---------------- 跳     转  -----------------
	use("ggandor/flit.nvim")
	use("ggandor/leap-ast.nvim")
	use("ggandor/leap-spooky.nvim")
	use("ggandor/leap.nvim")
	---------------- 括号补全 -----------------
	use("windwp/nvim-autopairs")
	use("kylechui/nvim-surround")
	---------------- 快速替换 -----------------
	use("vim-scripts/ReplaceWithRegister")
	---------------- 终    端 -----------------
	use({ "akinsho/toggleterm.nvim", tag = "v2.*" })

	---------------- tag 列表 --------------------
	use("preservim/tagbar")

	--------------------- LSP --------------------
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("onsails/lspkind.nvim")
	use("jayp0521/mason-null-ls.nvim")
	-- 补全引擎
	use("hrsh7th/nvim-cmp")
	-- 补全源
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
	use("hrsh7th/cmp-path") -- { name = 'path' }
	use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
	use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
	-- 代码段补全
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets
	-- 代码格式化
	use("mhartington/formatter.nvim")
	-- use("jose-elias-alvarez/null-ls.nvim")
	-- TODO: Deprecated
	use({
		"Shatur/neovim-cmake",
		ft = { "c", "cpp", "cmake" },
	})
	-- 显示错误列表
	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	-- -- git
	-- use({ "lewis6991/gitsigns.nvim" })
	-- -- vimspector
	-- use("puremourning/vimspector")
	-- ---------------------------dap调试--------------
	-- use("mfussenegger/nvim-dap")
	-- use("theHamsta/nvim-dap-virtual-text")
	-- use({
	-- 	"rcarriga/nvim-dap-ui",
	-- 	requires = { "mfussenegger/nvim-dap" },
	-- })
	-- -------------lf插件----------
	-- use({
	-- 	"ptzz/lf.vim",
	-- 	requires = { "voldikss/vim-floaterm" },
	-- })
	-- -----翻译插件
	-- use("voldikss/vim-translator")
	-- --------高亮
	-- use("mtdl9/vim-log-highlighting")
	-- --------显示lsp状态
	-- use("j-hui/fidget.nvim")
	-- ----------------测试代码片段
	-- use("vim-test/vim-test")
	-- use("nvim-neotest/neotest")
	--------------自动保存
	use("Pocco81/AutoSave.nvim")
	use("djoshea/vim-autoread")
	-- -----------j，k加速
	-- use("rhysd/accelerated-jk")
	-- ------------导航栏
	-- use("aserowy/tmux.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
