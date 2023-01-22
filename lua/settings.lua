-- general
vim.opt.wrap = false
vim.opt.cursorline = true
vim.wo.colorcolumn = '100'
vim.opt.cmdheight = 2
vim.opt.showtabline = 2
vim.opt.showmode = false

-- scrolloff
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 6

-- remove whitespace on save
vim.cmd([[au BufWritePre * :%s/\s\+$//e]])

-- tabbing and indenting
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.expandtab = true
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.bo.copyindent = true
vim.bo.preserveindent = true
vim.opt.list = true

-- don't auto comment new lines
vim.cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

