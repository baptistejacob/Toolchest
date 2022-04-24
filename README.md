# Toolchest

Helper to setup a correct work station

## Basic setup

1. Google Chrome
2. iTerm2
3. brew (`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`)
4. Oh My Zsh (`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`)
5. Clone this repo on ~/Work/toolchest
6. Setup iTerm2 : Preferences > Profiles then "other action" import profile `~/Work/toolchest/colibri.json` and set it as default
7. Link .zshrc : `cd ~ ; ln -s ~/Work/toolchest/.zshrc`
8. Install brew dependencies : `brew bundle install --file ~/Work/toolchest/Brewfile`
9. Install [vim-plug](https://github.com/junegunn/vim-plug)
10. Link .config : `cd ~ ; ln -s ~/Work/toolchest/.config`
11. Install python version via pyenv : `pyenv install 3.9.2`
12. Set python version via pyenv : `pyenv global 3.9.2`

## Postgres

- Create user: `createuser -s postgres`
- Start postgres : `brew services start postgresql`
- Stop postgres : `brew services stop postgresq`

## Daily operation

- Save brew dependencies `cd ~/Work/toolchest ; brew bundle dump`
- New lsp in vim `LspInstall <lang>` then `TSInstall <lang>`
