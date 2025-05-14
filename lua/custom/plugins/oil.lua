return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    config = function()
      require('oil').setup {
        view_options = {
          show_hidden = true,
        },
      }

      -- configs from TJ
      vim.keymap.set('n', '-', vim.cmd.Oil, { desc = 'Openup oil' })
      vim.keymap.set('n', '<space>-', require('oil').toggle_float, { desc = 'Toggle float oil' })
    end,
  },
}
