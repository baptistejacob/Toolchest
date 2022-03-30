nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <C-f> :NvimTreeFindFile<CR>

lua << EOF
require'nvim-tree'.setup {
    auto_close = true,
}
EOF
