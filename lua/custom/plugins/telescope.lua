local telescope = require 'telescope'
telescope.setup {
    -- You can put your default mappings / updates / etc. in here
    --  All the info you're looking for is in `:help telescope.setup()`
    --
    -- defaults = {
    --   mappings = {
    --     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
    --   },
    -- },
    pickers = {
        find_files = {
            hidden = true,
        },
    },

    extensions = {
        ast_grep = {
            command = {
                'ast-grep',
                '--json=stream',
            },

            grep_open_files = false,
            lang = nil,
        },

        ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
        },
    },
}

pcall(telescope.load_extension, 'fzf')
pcall(telescope.load_extension, 'ui-select')
pcall(telescope.load_extension, 'ast_grep')

-- See `:help telescope.builtin`
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind {H}elp_Tags' })
vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '{F}ind [K]eymaps' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind [G]rep' })
vim.keymap.set('n', '<leader>fGb', builtin.git_branches, { desc = '[F]ind [G]it [B]ranch' })
vim.keymap.set('n', '<leader>fGs', builtin.git_status, { desc = '[F]ind [G]it [S]tatus' })
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })
vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, { desc = '[F]ind workspace [S]ymbols' })
vim.keymap.set('n', '<leader>fa', function()
    vim.cmd 'Telescope ast_grep'
end, { desc = '[F]ind [A]STGrep' })
vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = 'find buffers' })

-- Shortcut for searching your Neovim configuration files
vim.keymap.set('n', '<leader>fn', function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
end)
