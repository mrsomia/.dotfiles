local harpoon = require("harpoon")
harpoon.setup()

local leader = vim.g.mapleader

vim.keymap.set('n', leader .. 'hm', function()
    require("harpoon.mark").add_file()
end)

vim.keymap.set('n', leader .. 'hp', function()
    require("harpoon.ui").toggle_quick_menu()
end)
