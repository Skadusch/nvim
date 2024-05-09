return {
	{ "nvim-lua/plenary.nvim" },
	-- autopairs
	{
		"windwp/nvim-autopairs",
		lazy = true,
		event = { "InsertEnter" },
		config = true,
	},
	-- goofy ahh business
	{
		"eandrju/cellular-automaton.nvim",
		lazy = true,
		event = { "VeryLazy" },
		vim.keymap.set("n", "<leader>fml", ":CellularAutomaton game_of_life<cr>"),
	},
	-- which key setup
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
	},
	{
		"Samsung/netcoredbg",
		config = function() end,
	},
}
