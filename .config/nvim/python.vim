" Some vim plugin need python support (ex: black) and since this config is
" used in a environment with pyenv we need to redefine the following with
" python path (to get local python path run : which python)
let g:python_host_prog = "/Users/baptistejacob/.pyenv/shims/python"
let g:python3_host_prog = "/Users/baptistejacob/.pyenv/shims/python"
