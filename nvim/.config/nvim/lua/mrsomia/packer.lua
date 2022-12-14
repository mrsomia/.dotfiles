-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return
end

return require('packer').startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- LSP Zero
    use {
      'VonHeikemen/lsp-zero.nvim', -- Simple LSP Config
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'}, --LSP Client
        {'williamboman/mason.nvim'}, -- used to auto install LSPs
        {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'}, -- Autocompletion plugin
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'}, -- Snippets source for nvim-cmp
        {'hrsh7th/cmp-nvim-lsp'}, -- LSP source for nvim-cmp
        {'hrsh7th/cmp-nvim-lua'},

        -- Snippets
        {'L3MON4D3/LuaSnip'}, -- Snippets plugin
        {'rafamadriz/friendly-snippets'},
      }
    }

    -- LSP
    use 'onsails/lspkind-nvim' -- VS Code like icons in LSP
    use 'folke/lsp-colors.nvim' -- Adds colors to diagnostic text
    use 'folke/trouble.nvim' -- Adds grouped diagnostics reporting

    -- DAP -- Debugger
    use 'mfussenegger/nvim-dap'
    use "jayp0521/mason-nvim-dap.nvim" -- Intergrate Mason with DAP

    use 'jose-elias-alvarez/null-ls.nvim' -- Linter/formatter

    use 'windwp/nvim-ts-autotag' --html/jsx tag completion

    -- status line
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })

    -- nvim-tree
    --[[use {
      'kyazdani42/nvim-tree.lua',
      requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
  }]] --

    use 'windwp/nvim-autopairs'
    use 'norcalli/nvim-colorizer.lua'
    -- Telescope
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use 'nvim-telescope/telescope-file-browser.nvim'

    -- Harpoon
    use 'ThePrimeagen/harpoon'

    -- color scheme
    use("gruvbox-community/gruvbox")
    use 'folke/tokyonight.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    use("nvim-treesitter/playground")
    use("romgrk/nvim-treesitter-context")

    -- git plugins
    use 'lewis6991/gitsigns.nvim'

    -- Comment.nvim
    use 'numToStr/Comment.nvim'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
end)
