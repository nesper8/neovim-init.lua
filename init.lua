-- source settings
require('settings')
require('plugins')

-- initialise lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--map leader to space
vim.g.mapleader = " "
vim.g.localleader = " "

-- plugins
require('lazy').setup({
	{ 'folke/which-key.nvim', lazy = true }, -- keybinds
	{ 'folke/neoconf.nvim', cmd = 'Neoconf' },
	{ 'nvim-neorg/neorg', ft = 'neorg', config = true }, -- Org for Nvim
	{ 'nvim-lua/plenary.nvim' },

	-- Treesitter and Extensions
	{ 'nvim-treesitter/nvim-treesitter' },
	{ 'windwp/nvim-autopairs', dependencies = 'nvim-treesitter/nvim-treesitter' },

  -- LSP and completion
  {
      'neovim/nvim-lspconfig',
      dependencies = {
          -- LSP Installer
          'williamboman/mason.nvim',
          'williamboman/mason-lspconfig.nvim',

          -- Status Updates
          'j-hui/fidget.nvim',

          -- Additional Stuff
          'folke/neodev.nvim',
      },
      lazy = true
  },

  {
      'hrsh7th/nvim-cmp',
      dependencies = {
          'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip'
      }
  },

  -- UI Stuff
	{ 'stevearc/dressing.nvim', event = 'VeryLazy' },
	{ 'lukas-reineke/indent-blankline.nvim' },
	{
	  'utilyre/barbecue.nvim',
	  name = 'barbecue',
	  version = '*',
	  dependencies = {
      'SmiteshP/nvim-navic',
      'nvim-tree/nvim-web-devicons',
	  },
	},
	{ 'nvim-lualine/lualine.nvim', dependencies = 'nvim-tree/nvim-web-devicons' },
	{ 'gelguy/wilder.nvim' },

	-- Git Stuff
	{ 'lewis6991/gitsigns.nvim' },
	{ 'TimUntersberger/neogit' },

	-- Some other useful stuff
	{ 'tpope/vim-sleuth' }
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
