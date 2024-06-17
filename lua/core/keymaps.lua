vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true 

-- This keybinding uses jk as the escape key to exit a mode
vim.api.nvim_set_keymap("i", "jk", "<ESC>", {noremap = true})
 
-- This keymap clears search
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Bufferline keymaps

-- Move to next tab
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })

-- Move to previous tab
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

-- Close current tab 
vim.keymap.set('n', '<C-w>', ':bdelete<CR>', { noremap = true, silent = true })

-- Go to a specific tab (1 a 9)
vim.keymap.set('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>7', ':BufferLineGoToBuffer 7<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>', { noremap = true, silent = true })

