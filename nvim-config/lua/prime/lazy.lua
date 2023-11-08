local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

local mod_lazy = require("lazy")

mod_lazy.setup({
   { 
      'nvim-telescope/telescope.nvim',
      tag = '0.1.3',
      dependencies = { 'nvim-lua/plenary.nvim' }
   },
   {
      'nvim-treesitter/nvim-treesitter'
   },
   {
      'ThePrimeagen/harpoon',
      dependencies = {
         'nvim-lua/plenary.nvim'
      }
   },
   {
      'mbbill/undotree'
   },
   {
      'tpope/vim-fugitive'
   },
   {
      'VonHeikemen/lsp-zero.nvim', 
      branch = 'v3.x',
      dependencies = {
         'williamboman/mason.nvim',
         'williamboman/mason-lspconfig.nvim',
         'neovim/nvim-lspconfig',
         'hrsh7th/cmp-nvim-lsp',
         'hrsh7th/nvim-cmp',
         'L3MON4D3/LuaSnip',
      }
   },
   {
      "mfussenegger/nvim-jdtls"
   }
})
