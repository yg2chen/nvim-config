local autocmd = vim.api.nvim_create_autocmd
local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

-- Highlight when yanking (copying) text
autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = augroup 'highlight_yank',
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Do not continue comments if O, o, or enter pressed

autocmd('BufEnter', {
  group = augroup 'comment_format_opt',
  pattern = '*',
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions - 'o'
  end,
})

-- return to last edit position when opening files
autocmd('BufReadPost', {
  group = augroup 'set_cursor_to_last_edit_position',
  pattern = '*',
  callback = function()
    local buffer = vim.api.nvim_get_current_buf()
    local mark = vim.api.nvim_buf_get_mark(buffer, '"')
    local line_count = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= line_count then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

return {}
