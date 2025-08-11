-- DAP (https://github.com/mfussenegger/nvim-dap)
return {
	"mfussenegger/nvim-dap",
	lazy = true,
	event = "VeryLazy",
	dependencies = {
		{
			"mfussenegger/nvim-dap-python",
			ft = "python",
		},
		{
			"rcarriga/nvim-dap-ui",
			config = true,
		},
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local dap_python = require("dap-python")

		dap_python.setup("~/.virtualenvs/debugpy/bin/python") -- Eller riktig path til din Python

		dapui.setup()

		-- Auto open/close DAP UI
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end
	end,
}
