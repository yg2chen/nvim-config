local colors = require 'ayu.colors'
colors.generate(true)

require('ayu').setup {
    mirage = true,
    overrides = {
        CursorLineNr = { fg = '#FFCC66' },
    },
}

-- require('gruvbox').setup {
--     overrides = {
--         SignColumn = { bg = '#282828' },
--     },
-- }

-- require('rose-pine').setup()

vim.cmd 'colorscheme ayu'
