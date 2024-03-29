-- general
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.showmode = false
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.updatetime = 200
vim.o.termguicolors = true
vim.o.hidden = true
vim.o.completeopt = 'menuone,noselect'
vim.o.clipboard = 'unnamedplus'
vim.wo.colorcolumn = '100'

-- netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- undo
vim.o.undofile = true

-- better searching
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true

-- scrolloff
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 6

-- remove whitespace on save
vim.cmd([[au BufWritePre * :%s/\s\+$//e]])

-- tabbing and indenting
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.breakindent = true
vim.o.smartindent = true
vim.o.copyindent = true
vim.o.preserveindent = true
vim.opt.list = true

-- don't auto comment new lines
vim.cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})


