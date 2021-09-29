let g:nvim_tree_ignore = ['.git']

nnoremap <C-n> :NvimTreeToggle<CR>

lua << EOF
require'nvim-tree'.setup {
    auto_close = true
}
EOF
