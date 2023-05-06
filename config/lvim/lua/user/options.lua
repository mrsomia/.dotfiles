-- no GUI cursor
vim.opt.guicursor = ""

-- numbers and relative numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- no sound
vim.opt.errorbells = false

vim.opt.tabstop = 2       -- tab distance
vim.opt.softtabstop = 2   -- tab distance for tab
vim.opt.shiftwidth = 2    -- tab distance for >
vim.opt.shiftround = true -- rounds up indent spacing for pasted text
vim.opt.expandtab = true  -- convert tabs to spaces

vim.opt.smartindent = true

vim.opt.wrap = false     -- Do not wrap files

vim.opt.swapfile = false -- use just RAM
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true  -- file for actions to complete undo

vim.opt.hlsearch = false -- highlights all search matches
vim.opt.incsearch = true -- highlight match as you search

-- vim.opt.termguicolors = true

vim.opt.scrolloff = 8 -- leave at least 8 lines at the top or bottom of screen
-- vim.opt.signcolumn = "yes" -- left column for signs
-- vim.opt.isfname:append("@-@") -- include symbols in filenames

-- Give more space for displaying messages.
-- vim.opt.cmdheight = 1 -- command line remains permanently

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|.
-- vim.opt.shortmess:append("c")

-- vim.opt.colorcolumn = "80" -- Where should the highlight column be

-- vim.g.mapleader = " "      -- my leader key

vim.opt.splitright = true -- all vsplits will open the new file on the right
-- vim.opt.splitbelow = true -- default h splits to be on the bottom and not top

lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.lua", "*.py" }
