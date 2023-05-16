vim.cmd("setlocal tabstop=4 shiftwidth=4")
vim.opt.colorcolumn = "88" -- Where should the highlight column be

local linters = require "lvim.lsp.null-ls.linters"
local formatters = require "lvim.lsp.null-ls.formatters"

linters.setup { { command = "ruff", filetypes = { "python" } } }
formatters.setup {
  { command = "black", filetypes = { "python" } },
}
