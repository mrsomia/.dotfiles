local kind = require('user.kind')

local wk = lvim.builtin.which_key
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- Move highlighted lines
lvim.keys.visual_mode["J"] = ":m '>+1<CR>gv=gv"
lvim.keys.visual_mode["K"] = ":m '<-2<CR>gv=gv"
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in place when joining next line
-- vim.keymap.set("n", "J", "mzJ`z")
--
-- Centers cursor when moving 1/2 page down or up
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"

-- Keeps search terms in the centre
lvim.keys.normal_mode["n"] = "nzzzv"
lvim.keys.normal_mode["N"] = "Nzzzv"
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")

-- Search word under cursor and then center display
lvim.keys.normal_mode["*"] = "*zz"
-- vim.keymap.set('n', '*', '*zz', { desc = 'Search and center screen' })

-- format just slected area
lvim.lsp.buffer_mappings.visual_mode["<leader>lf"] = { function()
  vim.lsp.buf.format({
    -- async = true, -- Add to make this Asynx
    range = {
      ["start"] = vim.api.nvim_buf_get_mark(0, "<"),
      ["end"] = vim.api.nvim_buf_get_mark(0, ">"),
    }
  })
end,
  "Format Selected"
}

-- greatest remap ever
-- let's you paste but not add the pasted over text to the last register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- let's you copy to system clipboard
lvim.builtin.which_key.mappings["y"] = { [["+y]], "Copy to system clipboard" }
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

lvim.builtin.which_key.mappings["Y"] = { [["+Y]], "Copy line to system clipboard" }
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- for quickfix list
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- start a global replace for the word under the cursor
lvim.builtin.which_key.mappings["s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  "Global replace" }
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- mark the current file as executable
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

wk.mappings["a"] = { ":Alpha<cr>", kind.icons.screen .. " Dashboard" }
wk.mappings[";"] = nil

wk.mappings["S"] = {
  name = " persistence.nvim",
  S = { "<cmd>lua require('persistence').load()<cr>", kind.icons.clock .. " Reload last session for dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", kind.icons.clock .. " Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", kind.icons.exit .. " Quit without saving session" },
}

wk.mappings["l"]["t"] = { ":LvimToggleFormatOnSave<cr>", kind.symbols_outline.File .. " Toggle format-on-save" }
wk.mappings["l"]["R"] = { ":LspRestart<cr>", kind.icons.exit .. " Restart" }

-- wk.mappings["s"]["w"] = {
--   "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>",
--   ' ' .. kind.cmp_kind.EnumMember .. " Search Word Under Cursor"
-- }

wk.mappings["f"] = {
  name = "Find",
  f = {
    function()
      require("lvim.core.telescope.custom-finders").find_project_files { previewer = true }
    end,
    "Find files"
  },
  s = { ":Telescope live_grep<cr>", "Grep String" },
  p = { ':Telescope projects<cr>', 'Projects' }, -- requires telescope-project.nvim plugin
  r = { ':Telescope resume<cr>', 'Resume' },
  h = { ":Telescope help_tags<cr>", "Help Tags" },
  b = { ":Telescope buffers<cr>", "Buffers" },
}
-- wk.mappings["f"]["w"] = {
--   "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>",
--   ' ' .. kind.cmp_kind.EnumMember .. " Search Word Under Cursor"
-- }

wk.mappings["m"] = {
  name = ' ' .. kind.todo_comments.PERF .. " Harpoon",
  m = { ":lua require('harpoon.mark').add_file()<cr>", "Mark file" },
  t = { ":lua require('harpoon.ui').toggle_quick_menu()<cr>", "Toggle UI" },
  a = { ":lua require('harpoon.ui').nav_file(1)<cr>", "Goto mark 1" },
  s = { ":lua require('harpoon.ui').nav_file(2)<cr>", "Goto mark 2" },
  d = { ":lua require('harpoon.ui').nav_file(3)<cr>", "Goto mark 3" },
  f = { ":lua require('harpoon.ui').nav_file(4)<cr>", "Goto mark 4" },
  g = { ":lua require('harpoon.ui').nav_file(5)<cr>", "Goto mark 5" },
  q = { ":lua require('harpoon.ui').nav_file(6)<cr>", "Goto mark 6" },
  w = { ":lua require('harpoon.ui').nav_file(7)<cr>", "Goto mark 7" },
  e = { ":lua require('harpoon.ui').nav_file(8)<cr>", "Goto mark 8" },
  r = { ":lua require('harpoon.ui').nav_file(9)<cr>", "Goto mark 9" },
  n = { ":lua require('harpoon.ui').nav_next()<cr>", "Next file" },
  p = { ":lua require('harpoon.ui').nav_prev()<cr>", "Prev file" },
}

wk.mappings["W"] = {
  name = ' ' .. kind.icons.screen .. " Window Ctrl",
  h = { '<C-w>|', 'Maximize window horizontally (|)' },
  v = { '<C-w>_', 'Maximize window vertically (_)' },
  ['='] = { '<C-w>=', 'Resize windows equally' },
  s = { ":lua require('telescope-tabs').list_tabs()<cr>", 'Search Tabs' },
}

wk.mappings["g"]["s"] = { ":Git<cr>", "Fugitvie" }
wk.mappings["g"]["S"] = { ":Gitsigns stage_hunk<cr>", "Stage Hunk" }

wk.mappings["u"] = { ":UndotreeToggle<cr>", "Undotree" }

wk.mappings["D"] = {
  name = "Dadbod",
  b = { ":DBUIToggle<cr>", "DBUIToggle" },
  B = { ":DBUIToggle<cr>", "DBUIToggle" },
}

-- wk.mappings['x'] = { ":xa<cr>", "Save All and Quit", }
