lua <<EOF

require'nvim-treesitter.configs'.setup {
    ensure_installed = {'python', 'ruby'},

    indent =    { enable = true },
    highlight = { enable = true },
}

EOF
