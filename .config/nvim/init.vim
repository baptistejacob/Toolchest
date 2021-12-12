let mapleader = " "

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" General purpose
    Plug 'arcticicestudio/nord-vim'     " colorscheme
    Plug 'kyazdani42/nvim-tree.lua'     " file tree
    Plug 'tpope/vim-fugitive'           " git inside vim
    Plug 'hoob3rt/lualine.nvim'         " lua statusline

" LSP related
    Plug 'neovim/nvim-lspconfig'                                " automatically launch and initialize language servers
    Plug 'kabouzeid/nvim-lspinstall'                            " ease managment and instalation of language
    Plug 'glepnir/lspsaga.nvim'                                 " GUI for lsp
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Simple interface for treesitter inside vim

" Telescope + requirements
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

" Python
    Plug 'psf/black'    " Black linter

" Custom icon for various plugin (status line / lsp / ect ...
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'

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
set termguicolors   " this variable must be enabled for colors to be applied properly

" File Format
set tabstop=4       " Number of spaces that a <Tab> in the file counts for
set softtabstop=4   " Number of spaces that a <Tab> counts for while performing editing operations
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent<Paste>
set expandtab       " Use tabs, not spaces
set smartindent     " Do smart indenting at the begining of a new line
%retab!             " Retabulate the whole file

:augroup number_toggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

:augroup number_color_toggle
    autocmd!
    autocmd InsertEnter * highlight LineNr ctermbg=yellow guifg=#A3BE8C
    autocmd InsertLeave * highlight LineNr ctermbg=black guifg=#4C566A
:augroup END

runtime ./maps.vim
runtime ./python.vim
