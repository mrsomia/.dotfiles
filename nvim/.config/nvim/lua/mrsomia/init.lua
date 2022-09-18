require("mrsomia.set") -- personal sets
require("mrsomia.packer") -- plugins
--require("mrsomia.clip") -- Adds native clipboard intergration
require("mrsomia.maps")

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]

