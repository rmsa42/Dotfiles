vim.g.mapleader = " "
vim.keymap.set("n", "<leader>dd", vim.cmd.Ex)
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set("n", '<leader>vs', function()
	local file = vim.fn.input("File: ", "", "file")
	vim.cmd("vsplit " .. file)
end)

