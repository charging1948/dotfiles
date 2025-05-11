local map = vim.keymap.set

map('n', '<leader>tp', '<cmd>TypstPreview<CR>', { noremap = true, silent = true, desc = 'Open [T]ypst [P]review in Browser' })
