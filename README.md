# Toolchest

Helper to setup a correct work station

## Basic setup

1. Google Chrome
2. iTerm2
3. brew (`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`)
4. Oh My Zsh (`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`)
5. Clone this repo on ~/Work/toolchest
6. Link .zshrc : `cd ~ ; ln -s ~/Work/toolchest/.zshrc`
7. Setup Nord for iTerm2 : Preferences > Profiles > Colors > on "color presets" selector import Nord.itermcolors
8. neovim (`brew install neovim`)
9. Link init.vim : `mkdir ~/.config/nvim ; cd ~/.config/nvim ; ln -s ~/Work/toolchest/init.vim`
