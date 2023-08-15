local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end

local builtin = require('telescope.builtin')
local themes = require('telescope.themes')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
