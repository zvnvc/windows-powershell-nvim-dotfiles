require('packer').startup(function(use)
	use 'wbthomason/packer.nvim' -- Packer (Plugin manager)
  use {
    "windwp/nvim-autopairs", -- Autopairs
      config = function() require("nvim-autopairs").setup {} end
  }
  use {
    'ryanoasis/vim-devicons' -- Another devicons
  }
  use {
    'nvim-lualine/lualine.nvim', -- Better status line (with devicons)
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-treesitter/nvim-treesitter' -- Better highlighting
  }
  use {
    'overcache/NeoSolarized' -- Colorscheme
  }
  use {
    'VonHeikemen/lsp-zero.nvim', -- LSP
    requires = {
      {'neovim/nvim-lspconfig'},
      {'williamboman/nvim-lsp-installer'},

      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
			config = function()
				require("config.cmp") -- Destination of Cmp config
			 end,
    }}
  use {
    'nvim-telescope/telescope.nvim', -- File explorer (Telescope)
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'kyazdani42/nvim-tree.lua' -- File explorer (Tree)
  }
  use {
    'ap/vim-css-color' -- Show colors in files (CSS, JS...)
  }
end)

