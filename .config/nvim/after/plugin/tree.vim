nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <C-f> :NvimTreeFindFile<CR>

lua << EOF
require'nvim-tree'.setup {
    view = {
        relativenumber = true
    }
}
EOF

" Autoclose tree if it's the last window
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
