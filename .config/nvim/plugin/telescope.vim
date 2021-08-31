" telescope remap
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

lua << EOF
require('telescope').setup{
    defaults = {
        file_ignore_patterns = {".git"}
    }
}
EOF
