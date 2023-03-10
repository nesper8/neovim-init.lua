-- Better Experience
vim.keymap.set( { 'n', 'v' }, '<Space>', '<Nop>', { silent = true } )

-- Toggles
vim.keymap.set( 'n', '<leader>tn', ':NvimTreeToggle<CR>', { desc = "[T]oggle [N]eo Tree", silent = true } )

-- Neogit
vim.keymap.set( 'n', '<leader>ng', ':Neogit<CR>', { desc = '[N]eo[G]it', silent = true } )

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Notify
vim.keymap.set('n', '<leader>nt', ':Telescope notify<CR>' , { desc = '[N]o[t]ifications', silent = true } )

-- Terminal
vim.keymap.set('n', '<leader>tt', '<CMD>lua require("FTerm").toggle()<CR>', { desc = '[T]oggle [T]erminal', silent = true } )
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { silent = true } ) -- Return to normal mode
vim.keymap.set('t', 'q', '<C-\\><C-n>', { silent = true } )

