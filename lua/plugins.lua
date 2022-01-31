-- plugin: onedark.nvim
require('onedark').setup {
  msg_area_style = "bold",
  transparent = true,
  highlight_linenumber = true,
  sidebars = {"terminal", "qf"},
  hide_inactive_statusline = true,
  transparent_sidebar = true
}

-- plugin: FTerm
require('FTerm').setup {
  border = 'single',
  dimensions = {
    height = 0.9,
    width = 0.9,
  },
}

-- plugin: lualine
require('lualine').setup {
  options = {
    theme = 'onedark',
    icons_enabled = false
  };
}

-- plugin: nvim-bufferline
require('bufferline').setup {
  options = {
    numbers = "buffer_id",
    show_close_icon = false,
    separator_style = "thin",
    show_buffer_close_icons = false
  };
}

-- plugin: nvim-cmp
require('cmp').setup{
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
      end,
  },

  mapping = {
    ['<C-d>'] = require('cmp').mapping.scroll_docs(-4),
    ['<C-f>'] = require('cmp').mapping.scroll_docs(4),
    ['<C-Space>'] = require('cmp').mapping.complete(),
    ['<C-e>'] = require('cmp').mapping.close(),
    ['<CR>'] = require('cmp').mapping.confirm({ select = true }),
  },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
  }
}

-- plugin: nvim-treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = {"javascript","html", "css", "bash", "lua", "json", "python", "rust", "go", "cpp", "c", "haskell", "zig", "java", "c_sharp", "latex"},
  highlight = {enable = true, use_languagetree = true},
  autopairs = {enable = true},
  autotag = {enable = true},
  indent = {enable = true}
}

-- plugin: nvim-autopairs
require('nvim-autopairs').setup {
  check_ts = true
}

-- plugin: gitsigns
require('gitsigns').setup {
  signs = {
    add = {hl = "DiffAdd", text = "+", numhl = "GitSignsAddNr"},
    change = {hl = "DiffChange", text = "~", numhl = "GitSignsChangeNr"},
    delete = {hl = "DiffDelete", text = "-", numhl = "GitSignsDeleteNr"},
    topdelete = {hl = "DiffDelete", text = "‾", numhl = "GitSignsDeleteNr"},
    changedelete = {hl = "DiffChange", text = "~", numhl = "GitSignsChangeNr"}
  },

  numhl = false,
  keymaps = {
    -- Default keymap options
    noremap = true,
    buffer = true,
    ["n ]c"] = {expr = true, '&diff ? \']c\' : \'<cmd>lua require"gitsigns".next_hunk()<CR>\''},
    ["n [c"] = {expr = true, '&diff ? \'[c\' : \'<cmd>lua require"gitsigns".prev_hunk()<CR>\''},
    ["n <leader>hs"] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ["n <leader>hu"] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ["n <leader>hr"] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ["n <leader>hp"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
    ["n <leader>hb"] = '<cmd>lua require"gitsigns".blame_line()<CR>'
  },

  watch_gitdir = {
    interval = 50
  },

  sign_priority = 5,
  status_formatter = nil
}

-- plugin: nvim-tree
require('nvim-tree').setup {
  disable_netrw = true,
  hijack_netrw = true,
  auto_close = true,
  open_on_tab = true,
  hijack_cursor = true,
  update_cwd = true,

  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },

  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {'.git', 'node_modules', '.cache'},
  },

  update_to_buf_dir = {
    enable = true,
    auto_open = true,
  },

  view = {
    width = 25,
    auto_resize = true,
    side = 'left',
  }
}
vim.g.nvim_tree_indent_markers = 1

--plugin: indent_blankline
require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
}

-- plugin: markdown-preview.nvim
vim.g.mkdp_auto_start = 1
