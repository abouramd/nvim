-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	require('packer').startup(function(use)
		use({ 'rose-pine/neovim', as = 'rose-pine' })
		use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

		-- undo tree
		use('mbbill/undotree')
		use('tpope/vim-fugitive')


		use {
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v1.x',
			requires = {
				-- LSP Support
				{'neovim/nvim-lspconfig'},
				{'williamboman/mason.nvim'},
				{'williamboman/mason-lspconfig.nvim'},
				-- Autocompletion
				{'hrsh7th/nvim-cmp'},
				{'hrsh7th/cmp-buffer'},
				{'hrsh7th/cmp-path'},
				{'saadparwaiz1/cmp_luasnip'},
				{'hrsh7th/cmp-nvim-lsp'},
				{'hrsh7th/cmp-nvim-lua'},

				-- Snippets
				{'L3MON4D3/LuaSnip'},
				{'rafamadriz/friendly-snippets'},
			}
		}

		-- auto save
		use({
			"Pocco81/auto-save.nvim",
			config = function()
				require("auto-save").setup {
					-- your config goes here
					-- or just leave it empty :)
				}
			end,
		})

		-- my auto cmp
		use("neovim/nvim-lspconfig")
		use("hrsh7th/cmp-nvim-lsp")
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-path")
		use("hrsh7th/cmp-cmdline")
		use("hrsh7th/nvim-cmp")
		use("hrsh7th/cmp-vsnip")
		use("hrsh7th/vim-vsnip")
		--

		use ("lukas-reineke/indent-blankline.nvim")

		use ("rafamadriz/friendly-snippets")

		use ("nvim-tree/nvim-tree.lua")
		use ("nvim-tree/nvim-web-devicons")

		use ("mg979/vim-xtabline")

		-- auto format
		use ("vim-autoformat/vim-autoformat")

		use ("dense-analysis/ale")

		use {
			'famiu/feline.nvim',
			requires = { 'creativenull/feline-provider-ale.nvim' },
		}
	end)
end)
