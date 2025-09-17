-- :tab term
local set = vim.opt_local

vim.api.nvim_create_autocmd('TermOpen', {
    group = vim.api.nvim_create_augroup('Open_Terminal', {}),
    callback = function()
        set.nu = false
        set.relativenumber = false
        set.scrolloff = 0
        vim.bo.filetype = 'terminal'
    end,
})

-- escape in terminal mode
vim.keymap.set('t', '<esc><esc>', '<c-\\><c-n>')

return {}
