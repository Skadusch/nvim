return {
	{
		"folke/trouble.nvim",
		lazy = true,
		config = function()
			require("trouble").setup({
				icons = false,
			})

			vim.keymap.set("n", "<leader>tt", function()
				require("trouble").toggle()
			end, { desc = "Open Trouble" })

			vim.keymap.set("n", "[t", function()
				require("trouble").next({ skip_groups = true, jump = true })
			end, { desc = "goes to next Trouble" })

			vim.keymap.set("n", "]t", function()
				require("trouble").previous({ skip_groups = true, jump = true })
			end, { desc = "goes to previous Trouble" })

			vim.keymap.set("n", "<leader>tw", function()
				require("trouble").toggle("workspace_diagnostics")
			end, { desc = "Trouble workspace_diagnostics" })

			vim.keymap.set("n", "<leader>td", function()
				require("trouble").toggle("document_diagnostics")
			end, { desc = "Trouble document_diagnostics" })

			vim.keymap.set("n", "<leader>tq", function()
				require("trouble").toggle("quickfix")
			end, { desc = "trouble quickfix" })
		end,
	},
}
