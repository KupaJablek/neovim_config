-- Config for all DAP related plugins

-- dap
local status_ok, dap = pcall(require, "dap")
if not status_ok then
    return
end

-- mason nvim dap -> requires mason to be loaded first
require('mason-nvim-dap').setup({
    ensure_installed = {"codelldb"}
})

-- dap ui
local dapui = require('dapui')
dapui.setup()

-- dap config
dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
  },
}

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

-- adapters
dap.adapters.lldb = {
  type = 'server',
  port = "${port}",
  executable = {
    command = vim.fn.stdpath("data") .. '/mason/bin/codelldb',
    args = {"--port", "${port}"},
  }
}

-- mapping for dap commands

vim.keymap.set("n", "<leader>b", function() dap.toggle_breakpoint() end, {})
vim.keymap.set("n", "<leader>dr", function() dap.continue() end, {})
-- step_over()
vim.keymap.set("n", "<leader>ds", function() dap.step_over() end, {})
-- step_into()
vim.keymap.set("n", "<leader>di", function() dap.step_into() end, {})
-- step_out()
vim.keymap.set("n", "<leader>do", function() dap.step_out() end, {})
-- exit
vim.keymap.set("n", "<leader>dd", function() dap.close() end, {})

