vim.g.mapleader = " "

-- Set filetype for xaml
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.xaml" },
	command = ":set filetype=xml",
})

vim.opt.guicursor = "a:block"
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.opt.conceallevel = 1

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"
