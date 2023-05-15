local kind = require("user.kind")

-- key maps
lvim.lsp.buffer_mappings.normal_mode["gr"] = {
  ":lua require'telescope.builtin'.lsp_references()<cr>",
  kind.cmp_kind.Reference .. " Find references"
}

lvim.lsp.buffer_mappings.normal_mode["gd"] = {
  ":lua vim.lsp.buf.definition()<cr>",
  -- ":lua require'telescope.builtin'.lsp_definitions()<cr>",
  kind.cmp_kind.Reference .. " Definitions"
}

lvim.lsp.buffer_mappings.normal_mode["gD"] = {
  ":lua vim.lsp.buf.type_definition()<cr>",
  kind.cmp_kind.Reference .. " Type Definition"
}

lvim.lsp.buffer_mappings.normal_mode["]d"] = {
  ":lua vim.diagnostic.goto_next()<cr>",
  "Next diagnostic",
}

lvim.lsp.buffer_mappings.normal_mode["[d"] = {
  ":lua vim.diagnostic.goto_prev()<cr>",
  "Previous diagnostic",
}

-- Stop pylyzer starting up
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pylyzer" })
