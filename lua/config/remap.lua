vim.g.mapleader = " "

vim.keymap.set("n", "<leader>v", vim.cmd.Ex)
vim.keymap.set("n", "<C-f>", ":Autoformat<ENTER>")
vim.keymap.set("n", "<C-t>", ":ToggleTerm<ENTER>")
vim.keymap.set("n", "<C-h>", ":Header42<ENTER>")
vim.keymap.set("n", "n", ":NvimTreeOpen<ENTER>")
vim.keymap.set("n", "<leader><Right>", "<C-w>l")
vim.keymap.set("n", "<leader><Left>", "<C-w>h")
vim.keymap.set("n", "<leader><Up>", "<C-w>k")
vim.keymap.set("n", "<leader><Down>", "<C-w>j")

