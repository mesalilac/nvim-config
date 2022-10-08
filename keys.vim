" keymaps

" Move line/s up(-) or down(+)
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

" Write buffer with Ctrl+s
nnoremap <silent> <C-S> :if expand("%") == ""<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>

" Write buffer and exit with Ctrl+x
nnoremap <silent> <C-X> :if expand("%") == ""<CR>browse confirm x<CR>else<CR>confirm x<CR>endif<CR>

" Window Navigation with Ctrl-[hjkl]
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

noremap <C-d> diwi
