let NERDTreeShowHidden=1 " Show hidden file in tree

let NERDTreeIgnore=[
    \'\.git$',
    \'^__pycache__$'
    \]

" NERDTree remap
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :NERDTreeFind<CR>

augroup NERDTreeAutoClose 
    autocmd!

    " Exit Vim if NERDTree is the only window left.
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
        \ quit | endif

augroup END
