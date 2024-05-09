local map = vim.keymap.set
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader><leader>x", "<cmd>source %<cr>")

map("i", "jk", "<ESC>")

map("n", "<leader>pv", ":Ex<cr>")

-- Markieten Text verschieben
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor bleibt an gleicher stelle bei shit-J
--
map("n", "J", "mzJ`z")

-- Cursor in der Mitte bei:
-- - halbe seite springen
--
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
--
-- - suchen
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- GÖTTLICHER BEREICH!
-- <leader>p behält davor kopiertes element
--
map("x", "<leader>p", '"_dP', { desc = "kopierten Text in Zwischenablage behalten" })
--

-- für html liveServer
map("n", "<leader>tm", ":tabnew<cr>", { desc = "creates new tab" })
map("n", "<leader>tn", ":tabn<cr>", { desc = "Next Tab" })
map("n", "<leader>tp", ":tabp<cr>", { desc = "Previous Tab" })
map("n", "<leader>tc", ":tabclose<cr>", { desc = "Closes Tab" })
-- map("n", "<leader>lun", ":term live-server<cr>", { desc = "Open Live-Server" })
--
-- set system clipboard
map("n", "<leader>y", '"+y')
map("v", "<leader>y", '"+y')
map("x", "<leader>y", '"+y')
