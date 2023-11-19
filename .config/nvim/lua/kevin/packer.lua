vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use ('romgrk/nvim-treesitter-context')

  use('windwp/nvim-ts-autotag')

  use("sindrets/diffview.nvim")

  use({
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  })

  use({ 
	  'sainnhe/gruvbox-material',  
	  as = 'gruvbox-material',
	  config = function ()
		  vim.cmd('colorscheme gruvbox-material')
	  end
  })

   use({ 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} })
   use('nvim-treesitter/playground')
   use('theprimeagen/harpoon')
   use('tpope/vim-fugitive')

   use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
   })


   use({
     'nvim-lualine/lualine.nvim',
     requires = { 'nvim-tree/nvim-web-devicons', opt = true }
   })


   use({
     'nvim-tree/nvim-tree.lua',
     requires = {
       'nvim-tree/nvim-web-devicons', -- optional
     },
   })


   use({
     'nvim-telescope/telescope.nvim',
     tag = '0.1.4',
     requires = { {'nvim-lua/plenary.nvim'} }
   })

  use('terrortylor/nvim-comment')

  use('nvim-tree/nvim-web-devicons')

   use({
     "folke/trouble.nvim",
     requires = { "nvim-tree/nvim-web-devicons" },
   })

   use({
     'VonHeikemen/lsp-zero.nvim',
     branch = 'v3.x',
     requires = {
       --- Uncomment these if you want to manage LSP servers from neovim
       {'williamboman/mason.nvim'},
       {'williamboman/mason-lspconfig.nvim'},

       -- LSP Support
       {'neovim/nvim-lspconfig'},
       -- Autocompletion
       {'hrsh7th/nvim-cmp'},
       {'hrsh7th/cmp-nvim-lsp'},
       {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
     }
   })

   use({'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'})

   use({
     "akinsho/toggleterm.nvim",
     tag = '*'
   })

   use ('nvim-lua/lsp-status.nvim')

   use ({ 'vimwiki/vimwiki' })

   use ({ 'lewis6991/gitsigns.nvim' })
end)
