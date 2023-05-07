-- no need to set style = "lvim"
local components = require("lvim.core.lualine.components")

lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_b = { components.filename }
lvim.builtin.lualine.sections.lualine_c = {
  components.branch,
  components.diagnostics
}
lvim.builtin.lualine.sections.lualine_y = {
  components.location
}
