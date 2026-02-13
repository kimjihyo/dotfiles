vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<F5>", function()
	vim.cmd("write")
	vim.cmd("split | terminal node % < input.txt")
end)
