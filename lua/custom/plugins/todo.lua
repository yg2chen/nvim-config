local todo = require 'todo-comments'
todo.setup {
    highlight = {
        keyword = 'fg',
    },
}

vim.keymap.set('n', ']t', function()
    todo.jump_next()
end, { desc = 'Next todo comment' })

vim.keymap.set('n', '[t', function()
    todo.jump_prev()
end, { desc = 'Previous todo comment' })

vim.keymap.set('n', '<leader>ft', function()
    vim.cmd 'TodoTelescope'
end, { desc = '[F]ind [T]odos' })
