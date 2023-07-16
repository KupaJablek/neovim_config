local opt = vim.opt

-- line numbers
opt.nu = true

-- indenting
local indent_amount = 4
opt.shiftwidth = indent_amount
opt.smartindent = true

opt.tabstop = indent_amount
opt.softtabstop = indent_amount
opt.expandtab = true

-- GUI colours
opt.termguicolors = true

-- search
opt.hlsearch = false
opt.incsearch = true

-- Sign column
opt.signcolumn = "no"

-- net rw
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
