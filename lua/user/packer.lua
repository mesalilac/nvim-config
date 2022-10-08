-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

-- My Plugins

    -- Highlight, list and search todo comments in your projects
    use {
        'folke/todo-comments.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }

    -- A pretty diagnostics, references, telescope results, quickfix
    -- and location list to help you solve all the trouble your code is causing.
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
    }

    -- buffer tabs
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    --  A file explorer tree for neovim written in lua
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- A Vim plugin which shows git diff markers in the
    -- sign column and stages/previews/undoes hunks and partial hunks.
    use 'airblade/vim-gitgutter'

    -- Rainbow Parentheses Improved, shorter code,
    -- no level limit, smooth and fast, powerful configuration.
    use 'luochen1990/rainbow'

    -- Vim plugin, insert or delete brackets, parens, quotes in pair
    use 'jiangmiao/auto-pairs'

    -- Find, Filter, Preview, Pick. All lua, all the time.
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- The fastest Neovim colorizer.
    -- color #ffffff
    use 'norcalli/nvim-colorizer.lua'

    -- A simple Neovim statusline
    use 'ojroques/nvim-hardline'

    -- Multiple cursors plugin for vim/neovim
    use {
        'mg979/vim-visual-multi',
        branch = 'master'
    }

    -- commentary.vim: comment stuff out
    use 'tpope/vim-commentary'

    --  Discord Rich Presence for Neovim
    use 'andweeb/presence.nvim'

    -- Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }

    -- vim-snipmate default snippets (Previously snipmate-snippets)
    use 'honza/vim-snippets'

    -- vim dashboard
    use 'glepnir/dashboard-nvim'

    -- --  A neovim lua plugin to help easily manage multiple terminal windows
    -- use {
    --     "akinsho/toggleterm.nvim",
    --     tag = '*'
    -- }

-- Colorschemes
    use 'rakr/vim-one'
    use 'gosukiwi/vim-atom-dark'
    use 'projekt0n/github-nvim-theme'
    use 'rafamadriz/neon'
    use 'gruvbox-community/gruvbox'
    use 'chriskempson/vim-tomorrow-theme'
    use 'bluz71/vim-moonfly-colors'
end)

--Plug 'reconquest/vim-pythonx'
--Plug 'yamatsum/nvim-cursorline'

