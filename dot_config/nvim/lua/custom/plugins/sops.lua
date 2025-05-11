return {
  {
    'lucidph3nx/nvim-sops',
    event = { 'BufEnter' },
    opts = {},
    keys = {
      { '<leader>use', vim.cmd.SopsEncrypt, desc = '[E]ncrypt [F]ile' },
      { '<leader>usd', vim.cmd.SopsDecrypt, desc = '[D]ecrypt [F]ile' },
    },
  },
}
