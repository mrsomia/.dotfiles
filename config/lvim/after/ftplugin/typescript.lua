vim.opt.colorcolumn = "80" -- Where should the highlight column be

local linters = require "lvim.lsp.null-ls.linters"
local formatters = require "lvim.lsp.null-ls.formatters"

local opts = {
  settings = {
    command = "eslint",
  },
}

require("lvim.lsp.manager").setup("eslint", opts)

linters.setup { { command = "eslint", filetypes = { "typescript", "javaScript", "typescriptreact", "javescriptreact" } } }
formatters.setup {
  { command = "prettier", filetypes = { "typescript", "javaScript", "typescriptreact", "javescriptreact" } },
}
