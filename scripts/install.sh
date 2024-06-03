#!/bin/bash
#
# You *NEED* to clone this repo first and then run it
# it also only works on macOS

echo Installing HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo Installing utils
brew install bat exa fd fzf git gh gum jq neovim nvm postgresql python ripgrep\
  sqlite stow tmux trash tree tree-sitter wget xz xh zoxide pyenv go lazygit\
  antidote starship

brew install --cask raycast

echo symlinking dotfiles
stow -t ~/.config ~/.dotfiles/config

echo installing node
nvm install node
npm i -g pnpm
pnpm add -g typescript typescript-language-server tsx netlify-cli vercel

# echo installing pyright server
# pip3 install pyright

echo Installing lunarvim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

gh auth login

echo "You'll probably want to get a patched nerd font, like JetBrainsMono from:
https://www.nerdfonts.com/font-downloads"

