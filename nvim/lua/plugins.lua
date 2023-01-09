return require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})
	-- theme
    use("navarasu/onedark.nvim")
	use({
		"goolord/alpha-nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.startify").config)
		end,
	})
	use("lukas-reineke/indent-blankline.nvim")

	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-lualine/lualine.nvim")
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })

	-- lsp
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })

	use("Yggdroot/LeaderF")
	use("mhartington/formatter.nvim")

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
    }
    --nvim hop
    use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
    -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup { }
        end
    }
	-- nvim-cmp
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	-- vsnip
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")
	-- lspkind
	use("onsails/lspkind-nvim")
end)
