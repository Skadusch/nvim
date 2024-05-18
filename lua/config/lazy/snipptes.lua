return {
	"L3MON4D3/LuaSnip",
	event = { "BufReadPre" },
	version = "v2.*",
	dependencies = {
		"rafamadriz/friendly-snippets",
		"saadparwaiz1/cmp_luasnip",
	},
	config = function()
		local ls = require("luasnip")
		require("luasnip.loaders.from_vscode").load()
		-- somehow vscode snippets get loaded 8 times in html?

		vim.keymap.set({ "i", "s" }, "<C-k>", function()
			ls.jump(1)
		end, { silent = true })
		vim.keymap.set({ "i", "s" }, "<C-j>", function()
			ls.jump(-1)
		end, { silent = true })
		vim.keymap.set({ "i", "s" }, "<C-E>", function()
			if ls.choice_active() then
				ls.change_choice(1)
			end
		end, { silent = true })
	end,
}
