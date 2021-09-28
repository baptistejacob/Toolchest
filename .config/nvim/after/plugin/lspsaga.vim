lua << EOF
local saga = require 'lspsaga'

saga.init_lsp_saga {
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    dianostic_header_icon = '   ',
    code_action_icon = ' ',
    finder_definition_icon = '  ',
    finder_reference_icon = '  ',
    definition_preview_icon = '  '
    border_style = "round",
}

EOF

nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>
