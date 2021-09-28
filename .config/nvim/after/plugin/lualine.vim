set noshowmode      " remove diplay of the mode (useless with ligthline)

lua << EOF
local lualine = require 'lualine'

local config = {
    options = {theme = 'nord'}
}

lualine.setup(config)
EOF
