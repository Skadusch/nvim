# Neovim Config

More or less a Backup, no warranty that it works.

Made in Windows. 😭

**Requires:** (need to check, not really sure)

- npm
- lua/luarocks
- .NET

"Neovim IDE with Lazy Plugin Manager."

Sets filetype xaml to xaml.

**Undos for days.**

Just set a directory in options.lua under:

```
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "/path/to/folder"
vim.opt.undofile = true
```

## Links:

- Neovim: https://neovim.io/
- Lazy Plugin Manager: https://github.com/folke/lazy.nvim
- ThePrimeagen init.lua: https://github.com/ThePrimeagen/init.lua
