-- Options
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false

vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.scrolloff = 10
vim.opt.wrap = false

vim.api.nvim_set_option("clipboard", "unnamedplus")

vim.diagnostic.config({
	update_in_insert = true,
	virtual_text = true,
	signs = false,
	underline = true,
	severity_sort = true,
})

-- Remaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>dd", vim.cmd.Oil)
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set({'n', 'v'}, '<leader>l', ':e #<CR>')
vim.keymap.set({'n', 'v'}, '<leader>w', ':w<CR>')
vim.keymap.set({'n', 'v'}, '<leader>vs', ':vs #<CR>')
vim.keymap.set({'n', 'v'}, '<leader>rs', ':e!<CR>')
