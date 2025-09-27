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
        'scottmckendry/cyberdream.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd 'colorscheme cyberdream'
        end,
    },
}
