return {
  {
    -- 'folke/tokyonight.nvim',
    'ellisonleao/gruvbox.nvim',
    -- 'catppuccin/nvim',
    -- name = 'catppuccin',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'gruvbox'

      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
