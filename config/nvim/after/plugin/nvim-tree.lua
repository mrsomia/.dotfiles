--[[nvim_tree = require("nvim-tree")

nvim_tree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
      custom = { "^.git$" }
  },
})

leader = vim.g.mapleader

vim.keymap.set('n', leader..'t', function()
    nvim_tree.toggle()
end)
]]--
