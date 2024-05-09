return {
	"aurum77/live-server.nvim",
	lazy = true,
	config = function()
		require("live_server")
	end,
	cmd = {
		"LiveServer",
		"LiveServerStart",
		"LiveServerStop",
		"LiveServerInstall",
	},
	build = function()
		require("live_server.util").install()
	end,
	vim.keymap.set("n", "<leader>ls", "<cmd>LiveServer<cr>", { desc = "Starts/Stops" }),
	vim.keymap.set("n", "<leader>lu", "<cmd>LiveServerStart<cr>"),
	vim.keymap.set("n", "<leader>ld", "<cmd>LiveServerStop<cr>"),
}
