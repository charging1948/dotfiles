return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function(self, opts)
      local harpoon = require 'harpoon'

      harpoon:setup(opts)

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = '[A]dd harpoon mark' })
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set('n', '<C-h>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<C-j>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<C-k>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<C-l>', function()
        harpoon:list():select(4)
      end)

      vim.keymap.set('n', '<C-c>', function()
        harpoon:list():clear()
      end)

      vim.keymap.set('n', '<C-S-h>', function()
        harpoon:list():remove_at(1)
      end)
      vim.keymap.set('n', '<C-S-j>', function()
        harpoon:list():remove_at(2)
      end)
      vim.keymap.set('n', '<C-S-k>', function()
        harpoon:list():remove_at(3)
      end)
      vim.keymap.set('n', '<C-S-l>', function()
        harpoon:list():remove_at(4)
      end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<C-S-P>', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', '<C-S-N>', function()
        harpoon:list():next()
      end)
    end,
  },
}
