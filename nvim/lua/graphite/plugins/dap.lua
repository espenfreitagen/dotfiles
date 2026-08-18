return {
  "mfussenegger/nvim-dap",

  keys = {
    { "<F5>", function() require("dap").continue() end },
    { "<F9>", function() require("dap").toggle_breakpoint() end },
    { "<F10>", function() require("dap").step_over() end },
    { "<F11>", function() require("dap").step_into() end },
    { "<F12>", function() require("dap").step_out() end },
  },

  config = function()
    local dap = require("dap")

    -- C: GDB
    dap.adapters.gdb = {
      type = "executable",
      command = "gdb",
      args = { "--interpreter=dap", "--quiet" },
    }

    dap.configurations.c = {
      {
        name = "Launch",
        type = "gdb",
        request = "launch",
        program = function()
          return vim.fn.input(
            "Path to executable: ",
            vim.fn.getcwd() .. "/",
            "file"
          )
        end,
        cwd = "${workspaceFolder}",
        stopAtBeginningOfMainSubprogram = false,
      },
    }

    -- Python: debugpy
    dap.adapters.python = {
      type = "executable",
      command = "python",
      args = { "-m", "debugpy.adapter" },
    }

    dap.configurations.python = {
      {
        name = "Launch current file",
        type = "python",
        request = "launch",
        program = "${file}",
        pythonPath = function()
          return "python"
        end,
      },
    }
  end,
}
