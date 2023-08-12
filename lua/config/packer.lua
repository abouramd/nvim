-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	require('packer').startup(function(use)
		use("folke/tokyonight.nvim")
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
		use("onsails/lspkind.nvim")
		-- For snippy users.
		use("dcampos/nvim-snippy")
		use("dcampos/cmp-snippy")
		--

		use ("lukas-reineke/indent-blankline.nvim")

		use ("rafamadriz/friendly-snippets")

		use ("nvim-tree/nvim-tree.lua")
		use ("nvim-tree/nvim-web-devicons")

		-- use ("mg979/vim-xtabline")

		-- auto format
		use ("vim-autoformat/vim-autoformat")

		-- use ("dense-analysis/ale")

		-- use {
			--	'famiu/feline.nvim',
			--	requires = { 'creativenull/feline-provider-ale.nvim' },
			-- }

			use {"akinsho/toggleterm.nvim", tag = '*', config = function()
				require("toggleterm").setup()
			end}
			use { "0ur4n05/42header.nvim",
			tag = 'v2.*',
			config = function()
				require("toggleterm").setup()
			end}

			use ("vim-syntastic/syntastic")

			use ("alexandregv/norminette-vim")

			use { "anuvyklack/windows.nvim",
			requires = {
				"anuvyklack/middleclass",
				"anuvyklack/animation.nvim"
			},
			config = function()
				vim.o.winwidth = 10
				vim.o.winminwidth = 10
				vim.o.equalalways = false
				require('windows').setup()
			end}


			use({
				"Maan2003/lsp_lines.nvim",
				config = function()
					require("lsp_lines").setup()
				end,
			})
			use ("tamton-aquib/staline.nvim")
			-- use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
			use {'nyoom-engineering/oxocarbon.nvim'}


			-- alpha dashboard
			-- use {'goolord/alpha-nvim',
			-- config = function ()
			--	require'alpha'.setup(require'alpha.themes.dashboard'.config)
			--end
			--}

			-- float notify
			use 'rcarriga/nvim-notify'
			--

			-- barbar plugin
			use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
			use 'romgrk/barbar.nvim'
			--


			-- 
			use {
				'numToStr/Comment.nvim',
				config = function()
					require('Comment').setup()
				end
			}
	end)
end)
