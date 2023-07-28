local api = require('nvim-tree.api')

require'nvim-tree'.setup {}

vim.keymap.set('n', '<leader>n', '<cmd> NvimTreeToggle <CR>', {})
