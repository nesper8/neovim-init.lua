require("plugins")
require("settings")
require("lsp")
require("keybinds")
require("tabcompletion")

require "paq" {
  'savq/paq-nvim';                                  -- Package Manager

  'ful1e5/onedark.nvim';                            -- Theme

  'nvim-lua/plenary.nvim';                          -- Plenary

  'numToStr/FTerm.nvim';                            -- Terminal

  'hoob3rt/lualine.nvim';                           -- StatusBar
  'akinsho/bufferline.nvim';                        -- Top Bufferline

  'neovim/nvim-lspconfig';                          -- LSP
  'hrsh7th/nvim-cmp';                               -- Completion
  'hrsh7th/cmp-nvim-lsp';                           -- LSP Suppliment
  'saadparwaiz1/cmp_luasnip';                       -- nvim-cmp support
  'L3MON4D3/LuaSnip';                               -- Snippets

  'nvim-treesitter/nvim-treesitter';                -- Treesitter
  'windwp/nvim-autopairs';                          -- Autopairs

  'lewis6991/gitsigns.nvim';                        -- Gitsigns

  'kyazdani42/nvim-tree.lua';                       -- Tree
  'kyazdani42/nvim-web-devicons';                   -- Icons

  'lukas-reineke/indent-blankline.nvim';            -- Indentlines

  'iamcco/markdown-preview.nvim';                   -- Markdown Preview
}
