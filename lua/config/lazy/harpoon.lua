return {
	"ThePrimeagen/harpoon",
	lazy = true,
	event = { "BufReadPre", "BufWritePre" },
	config = function()
		require("harpoon").setup({
			global_settings = {
				-- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
				save_on_toggle = true,

				-- saves the harpoon file upon every change. disabling is unrecommended.
				save_on_change = true,

				-- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
				enter_on_sendcmd = false,

				-- filetypes that you want to prevent from adding to the harpoon list menu.
				excluded_filetypes = { "harpoon" },

				-- enable tabline with harpoon marks
				tabline = false,
				tabline_prefix = "  ",
				tabline_suffix = "  ",
			},
			menu = {
				width = vim.api.nvim_win_get_width(0) - 4,
			},
		})
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")
		vim.keymap.set("n", "<C-m>", ui.toggle_quick_menu, { desc = "Open Harpoon-Menu" })
		vim.keymap.set("n", "<C-n>", mark.add_file)
		vim.keymap.set("n", "<leader>h1", function()
			ui.nav_file(1)
		end, { desc = "Harpoon file 1" })
		vim.keymap.set("n", "<leader>h2", function()
			ui.nav_file(2)
		end, { desc = "Harpoon file 2" })
		vim.keymap.set("n", "<leader>h3", function()
			ui.nav_file(3)
		end, { desc = "Harpoon file 3" })
		vim.keymap.set("n", "<leader>h4", function()
			ui.nav_file(4)
		end, { desc = "Harpoon file 4" })
	end,
}
