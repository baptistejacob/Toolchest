let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
let g:ale_fix_on_save = 1

let g:ale_linters = {
\'python': [],
\}

let g:ale_fixers = {
\'*': ['remove_trailing_lines', 'trim_whitespace'],
\'python': ['isort', 'black'],
\}
