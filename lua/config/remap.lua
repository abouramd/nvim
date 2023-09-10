vim.g.mapleader = " "

vim.keymap.set("n", "<leader>v", vim.cmd.Ex)
-- vim.keymap.set("n", "<C-f>", vim.cmd.Autoformat)
vim.keymap.set("n", "<leader>t", vim.cmd.ToggleTerm)
-- vim.keymap.set("n", "<C-h>", vim.cmd.Header42)
vim.keymap.set("n", "<leader>n", vim.cmd.NvimTreeOpen)
vim.keymap.set("n", "<leader>m", vim.cmd.WindowsMaximize)
vim.keymap.set("n", "<leader><Right>", "<C-w>l")
vim.keymap.set("n", "<leader><Left>", "<C-w>h")
vim.keymap.set("n", "<leader><Up>", "<C-w>k")
vim.keymap.set("n", "<leader><Down>", "<C-w>j")

