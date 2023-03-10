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
	{ -- shows keybinds
	  'folke/which-key.nvim',
	  config = function()
	    vim.o.timeout = true
	    vim.o.timeoutlen = 300
	    require('which-key').setup({})
	  end,
	},
	{ 'folke/neoconf.nvim', cmd = 'Neoconf' },
	{ 'nvim-neorg/neorg', ft = 'neorg', config = true }, -- Org for Nvim
	{ 'nvim-lua/plenary.nvim' },

	-- Treesitter and Extensions
	{
	  'nvim-treesitter/nvim-treesitter',
	  dependencies = {
	    'nvim-treesitter/nvim-treesitter-textobjects',
	  },
	  config = function()
	  pcall(require('nvim-treesitter.install').update { with_sync = true })
	  end,
	},
	{ 'windwp/nvim-autopairs' },
	{ 'numToStr/Comment.nvim', opts = {} },

  -- LSP and completion
  {
      'neovim/nvim-lspconfig',
      dependencies = {
          -- LSP Installer
          'williamboman/mason.nvim',
          'williamboman/mason-lspconfig.nvim',

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
	{
	  'lukas-reineke/indent-blankline.nvim',
	  opts = {
	    char = '┊',
	    show_trailing_blankline_indent = false,
	  }
	},
	{
	  'utilyre/barbecue.nvim',
	  name = 'barbecue',
	  version = '*',
	  dependencies = {
      'SmiteshP/nvim-navic',
      'romgrk/barbar.nvim',
	  },
	},
	{
	  'marko-cerovac/material.nvim',
	  priority = 1000,
	  config = function()
	    vim.cmd.colorscheme 'material'
	    vim.g.material_style = 'deep ocean'
      require('material').setup({
        contrast = {
          terminal = true,
          sidebars = true,
          floating = true,
          cursor_line = true,
          non_current_windows = true,
        },

        styles = {
          comments = { [[ italics = true ]] },
          strings = { [[ bold = true ]] },
          keywords = { [[ underline = true ]] },
          functions = { [[ bold = true, undercurl = true ]] },
        },

        plugins = {
          'indent-blankline',
          'gitsigns',
          'neogit',
          'neorg',
          'nvim-cmp',
          'nvim-tree',
          'nvim-navic',
          'nvim-web-devicons',
          'telescope',
          'which-key',
        },

        lualine_style = 'stealth',
      })
	  end,
	},
	{
	  'nvim-lualine/lualine.nvim', dependencies = 'nvim-tree/nvim-web-devicons',
	  opts = {
	    options = {
	      icons_enabled = false,
	    }
	  }
	},
	{
	  'folke/noice.nvim',
	  dependencies = {
	    'MunifTanjim/nui.nvim',
	    'rcarriga/nvim-notify',
	  },
	},

	{ 'goolord/alpha-nvim' },

	{
	  'xiyaowong/nvim-transparent',
	  config = function()
	  require('transparent').setup({
	      enable = true,
	    })
	  end,
	},

	-- Git Stuff
	{ 'lewis6991/gitsigns.nvim' },
	{ 'TimUntersberger/neogit' },

	-- Telescope
	{ 'nvim-telescope/telescope.nvim' },
	{ 'nvim-telescope/telescope-fzf-native.nvim' },

  -- Tree
  { 'nvim-tree/nvim-tree.lua', version = 'nightly' },

	-- Some other useful stuff
	{ 'tpope/vim-sleuth' },
	{ 'iamcco/markdown-preview.nvim' }
})

-- source plugins
require('plugins')
require('completion')
require('languages')
require('settings')
require('tree')
require('keymaps')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
