return {
    {
        'ellisonleao/gruvbox.nvim',
        priority = 1000, -- Make sure to load this before all the other start plugins.
        config = function()
            require('gruvbox').setup {
                overrides = {
                    SignColumn = { bg = '#282828' },
                },
            }
            -- vim.o.background = 'light'
            -- vim.cmd 'colorscheme gruvbox'
        end,
    },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            -- vim.cmd 'colorscheme tokyonight-moon'
        end,
    },
    -- {
    --     'sainnhe/edge',
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         -- Optionally configure and load the colorscheme
    --         -- directly inside the plugin declaration.
    --         vim.g.edge_style = 'aura'
    --
    --         vim.g.edge_enable_italic = true
    --         vim.cmd.colorscheme 'edge'
    --     end,
    -- },
    {
        'scottmckendry/cyberdream.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.cmd 'colorscheme cyberdream'
        end,
    },
    {
        'Shatur/neovim-ayu',
        lazy = false,
        priority = 1000,
        config = function()
            require('ayu').setup {
                mirage = true,
            }
            vim.cmd 'colorscheme ayu'
        end,
    },
}
