vim.pack.add {
    { src = 'https://github.com/nvim-lua/plenary.nvim' },

    -- telescope
    { src = 'https://github.com/nvim-telescope/telescope-ui-select.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
    { src = 'https://github.com/L3MON4D3/LuaSnip' },
    { src = 'https://github.com/folke/lazydev.nvim' },

    -- blink
    { src = 'https://github.com/saghen/blink.lib' },
    { src = 'https://github.com/saghen/blink.cmp' },

    { src = 'https://github.com/mason-org/mason.nvim' },
    { src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
    { src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim' },
    { src = 'https://github.com/mason-org/mason-registry' },
    { src = 'https://github.com/j-hui/fidget.nvim' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/Bilal2453/luvit-meta' },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter-context' },
    { src = 'https://github.com/stevearc/conform.nvim' },
    { src = 'https://github.com/lalitmee/browse.nvim' },
    { src = 'https://github.com/ellisonleao/gruvbox.nvim' },
    { src = 'https://github.com/folke/flash.nvim' },
    { src = 'https://github.com/lewis6991/gitsigns.nvim' },
    { src = 'https://github.com/nvim-mini/mini.nvim' },
    { src = 'https://github.com/stevearc/oil.nvim' },
    { src = 'https://github.com/chrisgrieser/nvim-spider' },
    { src = 'https://github.com/kylechui/nvim-surround' },
    { src = 'https://github.com/chomosuke/typst-preview.nvim' },
    { src = 'https://github.com/folke/which-key.nvim' },
    { src = 'https://github.com/shatur/neovim-ayu' },
    { src = 'https://github.com/scottmckendry/cyberdream.nvim' },
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },

    -- harpoon
    -- { src = 'https://github.com/theprimeagen/harpoon', version = 'harpoon2' },

    -- zen mode
    -- { src = 'https://github.com/folke/zen-mode.nvim' },
    -- { src = 'https://github.com/folke/twilight.nvim' },
}

vim.api.nvim_create_user_command('PackAdd', function(opts)
    vim.pack.add(opts.fargs)
end, { nargs = '+', desc = 'Add plugins' })

vim.api.nvim_create_user_command('PackDel', function(opts)
    vim.pack.del(opts.fargs)
end, { nargs = '+', desc = 'Delete plugins' })

vim.api.nvim_create_user_command('PackUpdate', function()
    vim.pack.update()
end, { desc = 'Update plugins' })
