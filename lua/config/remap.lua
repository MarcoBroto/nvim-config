vim.keymap.set('n', '<leader>ex', vim.cmd.Explore, { desc = 'Open Explorer view', }) -- Map 'Explore' command
vim.keymap.set('n', '<leader>term', vim.cmd.terminal, { desc = 'Open terminal', }) -- Map 'Terminal' command
vim.keymap.set('n', '<leader>ww', '<CMD>set wrap!<CR>', { desc = 'Toggle word wrap', })
--vim.keymap.set('n', '<M-w>', '<CMD>wrap!<CR>', { desc = 'Toggle word wrap' }) -- Alternative wordwrap keymap using meta key
vim.keymap.set('n', '<leader>nu', '<CMD>set relativenumber!<CR>', { desc = 'Toggle relative line numbers', })
