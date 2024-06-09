-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- moves lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keeps search terms in the centre
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Search word under cursor and then center display
vim.keymap.set("n", "*", "*zz", { desc = "Search and center screen" })

-- greatest remap ever
-- let's you paste but not add the pasted over text to the last register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- let's you copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "copy to system clipboard" })

vim.keymap.set("n", "<leader>Y", [["+Y]])

-- for quickfix list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- start a global replace for the word under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- mark the current file as executable
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>U", "<cmd>UndotreeToggle<cr>", { desc = "Undotree" })

vim.keymap.set("n", "<leader>gn", "<cmd>Neogit<cr>")
vim.keymap.set("n", "<leader>gS", "<cmd>Gitsigns<cr>")
