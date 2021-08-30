let mapleader = " "

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" General purpose
    Plug 'arcticicestudio/nord-vim' " colorscheme
    Plug 'preservim/nerdtree'       " file tree
    Plug 'tpope/vim-fugitive'       " git inside vim
    Plug 'itchyny/lightline.vim'    " minimalist statusline

" Telescope + requirements
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

" Python
    Plug 'numirias/semshi', {'for': 'python', 'do': ':UpdateRemotePlugins'} " Better python syntax highlight
    Plug 'psf/black'                                                        " Black linter

call plug#end()

colorscheme nord

set guicursor=      " cursor is always a block
set relativenumber  " show relative line numbers
set nu              " show current line number
set nohlsearch      " highlight as you search
set hidden          " remove warning if writing unsave file
set noerrorbells    " avoid vim ringing all the time !
set nowrap          " avoid long line from wraping
set noswapfile      " avoid creating swapfile for new buffer
set nobackup        " avoid creating backup file while saving
set undodir=~/.vim/undodir
set undofile
set incsearch       " highlight word found by search
set scrolloff=8     " keep cursor 8 line from top or botom (keep it more center)
set colorcolumn=80  " color column 80 let's try to keep things shord
set signcolumn=yes  " sign column for linter or other usage

" File Format
set tabstop=4       " Number of spaces that a <Tab> in the file counts for
set softtabstop=4   " Number of spaces that a <Tab> counts for while performing editing operations
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent<Paste>
set expandtab       " Use tabs, not spaces
set smartindent     " Do smart indenting at the begining of a new line
%retab!             " Retabulate the whole file

" NERDTree remap
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :NERDTreeFind<CR>

" telescope remap
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

" vim-fugitive remap
nnoremap <leader>gs :G<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>gf :diffget //2<CR>

" Going full vim
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
vmap <up> <nop>
vmap <down> <nop>
vmap <left> <nop>
vmap <right> <nop>

" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" Some vim plugin need python support (ex: black) and since this config is
" used in a environment with pyenv we need to redefine the following with
" python path (to get local python path run : which python)
let g:python_host_prog = "/Users/baptistejacob/.pyenv/shims/python"
let g:python3_host_prog = "/Users/baptistejacob/.pyenv/shims/python"

" Automaticaly run python black on save
autocmd BufWritePre *.py silent! execute ':Black'
