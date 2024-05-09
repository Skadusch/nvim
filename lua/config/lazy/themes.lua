return {
	{
		"zaldih/themery.nvim",
		-- Minimal config
		config = function()
			require("themery").setup({
				themes = {
					"rose-pine",
					"tokyonight",
					"onedark",
					"everforest",
					"nordic",
					"moonfly",
					"ayu",
					"palenightfall",
					"gruvbox",
				}, -- Your list of installed colorschemes
				themeConfigFile = "~/AppData/Local/nvim/lua/config/persist.lua", -- Described below
				livePreview = true, -- Apply theme while browsing. Default to true.
			})
			vim.keymap.set("n", "<leader>th", ":Themery<cr>")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		config = function()
			require("rose-pine").setup({
				variant = "auto",
				dark_variant = "main",
				styles = {
					italic = false,
					transparency = true,
				},
				enable = {
					terminal = true,
					legacy_highlights = true,
				},
				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},
				before_highlight = function(group, highlight, palette)
					-- Disable all undercurls
					if highlight.undercurl then
						highlight.undercurl = false
					end
					--
					-- Change palette colour
					--[[ if highlight.fg == palette.pine then
                        highlight.fg = palette.foam
                    end ]]
				end,
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = true,
		config = function()
			require("tokyonight").setup({
				style = "storm",
				transparent = false,
				comments = { italic = true },
				lualine_bold = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = false },
				},
			})
		end,
	},
	{
		"navarasu/onedark.nvim",
		name = "onedark",
		lazy = true,
		config = function()
			require("onedark").setup({
				style = "darker",
				code_style = {
					comments = "italic",
				},
				toggle_style_key = "<leader>os",
				toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" },
				lualine = {
					transparent = true,
				},
			})
		end,
	},
	{
		"neanias/everforest-nvim",
		name = "everforest",
		lazy = true,
		config = function()
			require("everforest").setup({})
		end,
	},
	{
		"AlexvZyl/nordic.nvim",
		name = "nordic",
		lazy = true,
		config = function()
			require("nordic").setup({
				italic_comments = true,
				cursorline = {
					-- Bold font in cursorline.
					bold = true,
					-- Bold cursorline number.
					bold_number = true,
					-- Available styles: 'nark , 'light'.
					theme = "dark",
					-- Blending the cursorline bg with the buffer bg.
					blend = 0.85,
				},
			})
		end,
	},
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = true,
	},
	{
		"Shatur/neovim-ayu",
		name = "ayu",
		lazy = true,
		config = function()
			require("ayu").setup({
				mirage = true,
			})
		end,
	},
	{
		"JoosepAlviste/palenightfall.nvim",
		name = "palenightfall",
		lazy = true,
		config = function()
			require("palenightfall").setup({
				transparent = false,
			})
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		lazy = true,
		config = function()
			require("gruvbox").setup({
				italic = {
					comments = true,
				},
			})
		end,
	},
}
