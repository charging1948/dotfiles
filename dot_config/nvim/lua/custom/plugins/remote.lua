return {
  {
    -- 'amitds1997/remote-nvim.nvim',
    -- version = '*', -- Pin to GitHub releases
    'charging1948/remote-nvim.nvim', -- Workaround for newer neovim releases.
    dependencies = {
      'nvim-lua/plenary.nvim', -- For standard functions
      'MunifTanjim/nui.nvim', -- To build the plugin UI
      'nvim-telescope/telescope.nvim', -- For picking b/w different remote methods
    },
    opts = {
      -- Add your other configuration parameters as usual
      -- offline_mode = {
      --   enabled = true,
      -- },
    },
  },
}
