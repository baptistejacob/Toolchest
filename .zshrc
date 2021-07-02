# Path to oh-my-zsh installation.
export ZSH="/Users/baptistejacob/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export PATH="$(pyenv root)/shims:${PATH}"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

alias vim="nvim"
