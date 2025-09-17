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
        end,
    },
    {
        'vague2k/vague.nvim',
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other plugins
        config = function()
            -- NOTE: you do not need to call setup if you don't want to.
            require('vague').setup {
                -- optional configuration here
            }
        end,
    },
    {
        'Mofiqul/vscode.nvim',
        config = function() end,
    },
    {
        'scottmckendry/cyberdream.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd 'colorscheme cyberdream'
        end,
    },
}
