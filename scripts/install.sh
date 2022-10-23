#!/bin/bash
#
# You *NEED* to clone this repo first and then run it
# it also only works on macOS

echo Installing HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo Installing utils
brew install bat fd fzf git gh gum jq lua-language-server neovim nvm postgresql\
  ripgrep sqlite stow tmux trash tree tree-sitter wget xz z

brew install --cask raycast

echo symlinking/configuring some dotfiles
cd ~/.dotfiles
stow git
stow nvim
stow zshrc

echo installing node
nvm install node
npm i -g pnpm
pnpm add -g typescript typescript-language-server tsx netlify-cli vercel

echo installing pyright server
pip3 install pyright

echo Installing packer so that neovim can install packages
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

gh auth login

echo "You'll probably want to get a patched nerd font, like JetBrainsMono from:
https://www.nerdfonts.com/font-downloads"

