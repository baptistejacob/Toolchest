# Path to oh-my-zsh installation.
export ZSH="/Users/baptistejacob/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export PATH="$(pyenv root)/shims:${PATH}"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

alias vim="nvim"

# Autojump setup
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
