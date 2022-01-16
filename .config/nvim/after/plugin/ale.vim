let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

let g:ale_linters = {
\'python': ['flake8'],
\}

let g:ale_fixers = {
\'*': ['remove_trailing_lines', 'trim_whitespace'],
\'python': ['isort', 'black'],
\}
