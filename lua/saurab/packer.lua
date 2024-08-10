-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
	})
  use({
   "catppuccin/nvim",
    as = "catppuccin",
    config = function ()
     vim.cmd('colorscheme catppuccin-mocha') 
    end
  })
	use ( 'nvim-treesitter/nvim-treesitter', { run = ':TsUpdat' } )
	use ('mbbill/undotree')
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	}
	use {
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-nvim-lsp'
	}
	use ('hrsh7th/cmp-vsnip')
	use ('L3MON4D3/LuaSnip')
	use ('saadparwaiz1/cmp_luasnip')
  use ('m4xshen/autoclose.nvim')
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
end)
