local harpoon = require("harpoon")
harpoon.setup()

local leader = vim.g.mapleader

vim.keymap.set('n', leader .. 'm', function()
    require("harpoon.mark").add_file()
end)

vim.keymap.set('n', leader .. 'hp', function()
    require("harpoon.ui").toggle_quick_menu()
end)
vim.keymap.set('n', leader .. 'h1', function()
    require("harpoon.ui").nav_file(1)
end)
vim.keymap.set('n', leader .. 'h2', function()
    require("harpoon.ui").nav_file(2)
end)
vim.keymap.set('n', leader .. 'h3', function()
    require("harpoon.ui").nav_file(3)
end)
vim.keymap.set('n', leader .. 'h4', function()
    require("harpoon.ui").nav_file(4)
end)

