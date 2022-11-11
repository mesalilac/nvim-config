-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- My Plugins

	-- Highlight, list and search todo comments in your projects
	use({
		"folke/todo-comments.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Nvim Treesitter configurations
	-- and abstraction layer
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- buffer tabs
	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	--  A file explorer tree for neovim written in lua
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})

	use({
		"lewis6991/gitsigns.nvim",
		-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
	})

	use("p00f/nvim-ts-rainbow")

	-- Vim plugin, insert or delete brackets, parens, quotes in pair
	-- use("jiangmiao/auto-pairs")

	use({
		"ZhiyuanLck/smart-pairs",
		event = "InsertEnter",
		config = function()
			require("pairs"):setup()
		end,
	})

	-- Find, Filter, Preview, Pick. All lua, all the time.
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	--  File Browser extension for telescope.nvim
	use({ "nvim-telescope/telescope-file-browser.nvim" })

	-- The fastest Neovim colorizer.
	-- color #ffffff
	use("norcalli/nvim-colorizer.lua")

	-- A simple Neovim statusline
	use("ojroques/nvim-hardline")

	-- scrollbar
	use("Xuyuanp/scrollbar.nvim")

	-- Indent guides for Neovim
	use("lukas-reineke/indent-blankline.nvim")

	-- Multiple cursors plugin for vim/neovim
	use({
		"mg979/vim-visual-multi",
		branch = "master",
	})

	-- commentary.vim: comment stuff out
	use("tpope/vim-commentary")

	--  Discord Rich Presence for Neovim
	-- use("andweeb/presence.nvim")

	-- Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers
	-- use {
	--     'neoclide/coc.nvim',
	--     branch = 'release'
	-- }

	-- a lua powered greeter like vim-startify / dashboard-nvim
	use({
		"goolord/alpha-nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	-- cmp plugins
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")

	use({
		"saecki/crates.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("crates").setup()
		end,
	})

	-- lsp
	use("williamboman/nvim-lsp-installer")
	use("neovim/nvim-lspconfig")

	use("jose-elias-alvarez/null-ls.nvim")

	use("RRethy/vim-illuminate")

	--  A neovim lua plugin to help easily manage multiple terminal windows
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
	})

	use("simrat39/symbols-outline.nvim")
	use({ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" })
	-- Colorschemes
	use("rakr/vim-one")
	use("gosukiwi/vim-atom-dark")
	use("projekt0n/github-nvim-theme")
	use("rafamadriz/neon")
	use("gruvbox-community/gruvbox")
	use("chriskempson/vim-tomorrow-theme")
	use("bluz71/vim-moonfly-colors")
	use("folke/tokyonight.nvim")
	use("Shatur/neovim-ayu")
	use("mswift42/vim-themes")
	use("axvr/photon.vim")
	use("Mofiqul/vscode.nvim")
	use("sainnhe/everforest")
	use("sainnhe/gruvbox-material")
	use("joshdick/onedark.vim")
	use("nanotech/jellybeans.vim")
	use("tomasiser/vim-code-dark")
	use("sonph/onehalf")
	use("romgrk/doom-one.vim")
	use("KabbAmine/yowish.vim")
	use("Yazeed1s/oh-lucy.nvim")
	-- use("~/projects/lua/nvim-plugins/oh-lucy.nvim")
	use("catppuccin/nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
