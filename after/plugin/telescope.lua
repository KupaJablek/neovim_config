local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end

telescope.setup{}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>th', builtin.colorscheme, {})
