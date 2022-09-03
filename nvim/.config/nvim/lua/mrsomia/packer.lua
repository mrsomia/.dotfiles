-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- color scheme
  use("gruvbox-community/gruvbox")
  use("folke/tokyonight.nvim")

  use("nvim-treesitter/nvim-treesitter", {
    run = ":TSUpdate"
  })

  use("nvim-treesitter/playground")
  use("romgrk/nvim-treesitter-context")
end)

