 vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons

local lsp = require('lsp-zero')

lsp.preset("recommended")

-- Defaults for the above preset
--[[ lsp.set_preferences({
  suggest_lsp_servers = true,
  setup_servers_on_start = true,
  set_lsp_keymaps = true,
  configure_diagnostics = true,
  cmp_capabilities = true,
  manage_nvim_cmp = true,
  call_servers = 'local',
  sign_icons = {
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = ''
  }
}) ]]

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
  'pyright',
  'denols',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-d>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

vim.diagnostic.config({
    virtual_text = true,
})

lsp.nvim_workspace()

local on_attach = function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  if client.name == "eslint" then
      vim.cmd.LspStop('eslint')
      return
  end

  if client.name == "pyright" or client.name == "rust-analyzer" then
    vim.opt.tabstop = 4 -- tab distance
    vim.opt.softtabstop = 4 -- tab distance for tab
    vim.opt.shiftwidth = 4 -- tab distance for >
  end

    -- Mappings
  -- vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
  -- vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
  -- vim.keymap.set('n', '<leader>wl', function()
  --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- end, opts)

  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
  vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', '<space>fmt', function() vim.lsp.buf.format { async = true } end, opts)
end

local lspconfig = require("lspconfig")
lsp.configure('denols', {
  on_attach = on_attach,
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
})

lsp.configure('tsserver', {
  on_attach = on_attach,
  root_dir = lspconfig.util.root_pattern("package.json"),
})

lsp.on_attach(on_attach)

lsp.setup()

-- -- DAP
-- local dap = require('dap')
--
-- -- KeyMaps for DAP
-- --
--
-- vim.keymap.set('n', '<leader><leader>', function() dap.close() end)
-- vim.keymap.set('n', '<Up>', function() dap.continue() end)
-- vim.keymap.set('n', '<Down>', function() dap.step_over() end)
-- vim.keymap.set('n', '<Left>', function() dap.step_out() end)
-- vim.keymap.set('n', '<Right>', function() dap.step_into() end)
-- vim.keymap.set('n', '<leader>dl', function() dap.run_last() end)
-- vim.keymap.set('n', '<leader>b', function() dap.toggle_breakpoint() end)
--
-- require("mason-nvim-dap").setup()

