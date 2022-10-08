-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'zgpio/tree.nvim'
    
-- Colorschemes
    use 'rakr/vim-one'
    use 'gosukiwi/vim-atom-dark'
    use 'projekt0n/github-nvim-theme'
    use 'rafamadriz/neon'
    use 'gruvbox-community/gruvbox'
    use 'chriskempson/vim-tomorrow-theme'
    use 'bluz71/vim-moonfly-colors'
end)

--call plug#begin('~/.vim/plugged')

--" required plugins
--Plug 'nvim-lua/plenary.nvim'
--Plug 'ryanoasis/vim-devicons'
--Plug 'kyazdani42/nvim-web-devicons'

--Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
--Plug 'folke/todo-comments.nvim'
--Plug 'airblade/vim-gitgutter'
--Plug 'luochen1990/rainbow'
--Plug 'jiangmiao/auto-pairs'
---Plug 'glepnir/dashboard-nvim'
--Plug 'nvim-telescope/telescope.nvim'
--Plug 'preservim/nerdtree'
--Plug 'neoclide/coc.nvim', {'branch': 'release'}
--Plug 'reconquest/vim-pythonx'
--Plug 'honza/vim-snippets'
--Plug 'norcalli/nvim-colorizer.lua'
--Plug 'ojroques/nvim-hardline'
--Plug 'mg979/vim-visual-multi', {'branch': 'master'}
--Plug 'yamatsum/nvim-cursorline'
--Plug 'andweeb/presence.nvim'
--Plug 'tpope/vim-commentary'
--Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
--Plug 'Xuyuanp/nerdtree-git-plugin'
--Plug 'PhilRunninger/nerdtree-buffer-ops'
--Plug 'romgrk/barbar.nvim'


--call plug#end()


