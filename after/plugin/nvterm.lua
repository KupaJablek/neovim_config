local status_ok, nvterm = pcall(require, "nvterm")
if not status_ok then
    return
end

nvterm.setup({
  terminals = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
      float = {
        relative = 'editor',
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = .3, },
      vertical = { location = "rightbelow", split_ratio = .5 },
    }
  },
  behavior = {
    autoclose_on_quit = {
      enabled = false,
      confirm = true,
    },
    close_on_exit = true,
    auto_insert = false,
  },
})

-- return to normal mode from terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {})

-- make/toggle terminals
vim.keymap.set('n', '<leader>h', function() require('nvterm.terminal').toggle('horizontal') end, {})
vim.keymap.set('n', '<leader>v', function() require('nvterm.terminal').toggle('vertical') end, {})

