-- Config for all DAP related plugins

-- dap
local dap = require('dap')

-- mason nvim dap -> requires mason to be loaded first
require('mason-nvim-dap').setup({
    ensure_installed = {"codelldb"}
})

-- dap ui
local dapui = require('dapui')
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

-- mapping for dap commands

vim.keymap.set("n", "<leader>b", function() dap.toggle_breakpoint() end, {})
vim.keymap.set("n", "<leader>dr", function() dap.continue() end, {})
-- step_over()
-- step_into()

