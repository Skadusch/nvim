return {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		require("dapui").setup()
		local dap = require("dap")
		dap.adapters.coreclr = {
			type = "executable",
			command = "C:/Users/Slash/AppData/Local/nvim-data/lazy/netcoredbg",
			args = { "--interpreter=vscode" },
		}
		-- doesnt work yet
		dap.configurations.cs = {
			{
				type = "coreclr",
				name = "launch - netcoredbg",
				request = "launch",
				program = "C:\\Users\\Slash\\AppData\\Local\\nvim-data\\lazy\\netcoredbg\\src\\coreclr\\cordebug.h",
			},
		}
		vim.keymap.set("n", "<F5>", function()
			require("dapui").toggle()
		end)
		--[[ vim.keymap.set("n", "<F6>", function()
        require("dapui").close()
        end), ]]
		vim.keymap.set("n", "<leader>b", function()
			-- code
			require("dap").toggle_breakpoint()
		end)
		vim.keymap.set("n", "<leader>m", function()
			-- code
			dap.continue()
		end)
		vim.keymap.set("n", "<leader>si", function()
			-- code
			dap.step_into()
		end)
		vim.keymap.set("n", "<leader>si", function()
			-- code
			dap.step_over()
		end)
	end,
}
