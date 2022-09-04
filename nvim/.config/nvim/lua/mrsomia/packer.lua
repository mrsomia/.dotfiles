-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- LSP
  use("neovim/nvim-lspconfig")
  use 'onsails/lspkind-nvim'

  use({
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  })

  use("onsails/lspkind-nvim")
  
  use 'windwp/nvim-autopairs'
  use 'norcalli/nvim-colorizer.lua'
  -- Telescope
  use("nvim-lua/plenary.nvim")
  use("nvim-lua/popup.nvim")
  use("nvim-telescope/telescope.nvim")

  -- color scheme
  use("gruvbox-community/gruvbox")
  use("folke/tokyonight.nvim")

  use("nvim-treesitter/nvim-treesitter", {
    run = ":TSUpdate"
  })

  use("nvim-treesitter/playground")
  use("romgrk/nvim-treesitter-context")
end)

