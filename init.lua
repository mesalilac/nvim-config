require("user.set")
require("user.remap")

-- " Install vim-plug if not found
-- if empty(glob('~/.vim/autoload/plug.vim'))
--   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
--     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
-- endif

-- " Run PlugInstall if there are missing plugins
-- autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
--   \| PlugInstall --sync | source $MYVIMRC
-- \| endif

-- source $HOME/.config/nvim/plugins.vim

-- lua require('github-theme').setup()
-- lua require'colorizer'.setup()

-- let g:mapleader = " "

-- " source all files in plug-config
-- for f in glob('$HOME/.config/nvim/plug-config/*', 0, 1)
--     if !empty(glob(f . '/init.vim'))
--         execute 'source' . f . '/init.vim'
--     endif

--     if !empty(glob(f . '/keys.vim'))
--         execute 'source' . f . '/keys.vim'
--     endif
-- endfor

-- source $HOME/.config/nvim/keys.vim

-- fun! TrimWhiteSpace()
--     let l:save = winsaveview()
--     keeppatterns %s/\s\+$//e
--     call winrestview(l:save)
-- endfun

-- augroup MAIN
--     autocmd!
--     autocmd BufwritePre * :call TrimWhiteSpace()
-- augroup END

-- colorscheme one

