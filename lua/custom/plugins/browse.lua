-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'lalitmee/browse.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      local bookmarks = {
        ['github'] = 'https://github.com/yg2chen',
        ['portal'] = 'https://portal.nycu.edu.tw/#/',
        ['drive'] = 'https://drive.google.com/drive/u/0/my-drive',
        ['repo_search'] = 'https://github.com/search?q=%s&type=repositories',
        ['youtube'] = 'https://www.youtube.com/',
      }

      vim.keymap.set('n', '<leader>b', function()
        require('browse').browse { bookmarks = bookmarks }
      end)
    end,
  },
}
