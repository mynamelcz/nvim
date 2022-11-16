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

  use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

  use("bluz71/vim-nightfly-guicolors")      -- 主题
  use("szw/vim-maximizer")                  -- 最大化当前窗口
  use("kylechui/nvim-surround")             -- 成对操作，例如添加（ “  ‘ 
  use("windwp/nvim-autopairs")              -- 自动成对输入 () ""  ''
  use("vim-scripts/ReplaceWithRegister")    -- 替换 (gr + motion)
  use("numToStr/Comment.nvim")              -- 注释
  use("nvim-tree/nvim-tree.lua")            -- 文件浏览器          
  use("kyazdani42/nvim-web-devicons")       -- 文件类型图标
  use("akinsho/bufferline.nvim")            -- 窗口上方显示文件名
  use("nvim-lualine/lualine.nvim")          -- 窗口下方的状态栏
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder


  -- 自动补全 
  use("hrsh7th/nvim-cmp")   -- 自动补全插件
  use("hrsh7th/cmp-buffer") -- buffer 补全 
  use("hrsh7th/cmp-path")   -- 路径补全 
  -- 代码段补全 
  use("L3MON4D3/LuaSnip")           -- snippet engine
  use("saadparwaiz1/cmp_luasnip")    -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets
  
  -- managing & installing lsp servers, linters & formatters
  use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
  use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig
  -- configuring lsp servers
  use("neovim/nvim-lspconfig") -- easily configure language servers
  use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
  use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
  use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion
  -- 代码格式化formatting & linting
  use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
  use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls
--
  -- treesitter configuration
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
        require("nvim-treesitter.install").update({ with_sync = true })
    end,
  })

  ---- auto closing
  --use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags
--
  ---- git integration
  --use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

  if packer_bootstrap then
    require("packer").sync()
  end
end)
