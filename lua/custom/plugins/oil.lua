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
            OilBar = function()
                local path = vim.fn.expand '%'
                path = path:gsub('oil://', '')
                return '  ' .. vim.fn.fnamemodify(path, ':.')
            end

            require('oil').setup {
                win_options = {
                    winbar = '%{v:lua.OilBar()}',
                },

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
