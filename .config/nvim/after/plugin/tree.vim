nnoremap <C-n> :NvimTreeToggle<CR>

lua << EOF
require'nvim-tree'.setup {
    auto_close = true,
}
EOF
