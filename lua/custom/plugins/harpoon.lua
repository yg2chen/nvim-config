return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        local harpoon = require 'harpoon'
        harpoon:setup()

        vim.keymap.set('n', '<leader>a', function()
            harpoon:list():add()
        end, { desc = 'Harpoon2 add' })

        vim.keymap.set('n', '<leader>l', function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = 'Harpoon2 list' })

        -- configs from tj
        -- set <space>1, .. be the shortcuts to file
        for _, idx in ipairs { 1, 2, 3, 4, 5 } do
            vim.keymap.set('n', string.format('<space>%d', idx), function()
                harpoon:list():select(idx)
            end, { desc = string.format('Harpoon2 select %d', idx) })
        end
    end,
}
