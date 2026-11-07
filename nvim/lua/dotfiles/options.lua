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
vim.keymap.set('n', '<leader>t',
	function()
		vim.ui.input({
			completion = "file",
			prompt = "Run: "
		}, function(input)
				if input == nil then
					return
				end
				vim.cmd.RunT({ input })
			end)
	end)

-- Custom Commands
vim.api.nvim_create_user_command("Macros", 
	function()
		local buf = vim.api.nvim_create_buf(false, true)

		vim.api.nvim_buf_set_lines(buf, 0, -1, false, {
			"-- Window Macros",
			"CTRL-W >	Increment width by 1",
			"CTRL-W <	Decrement width by 1",
			"CTRL-W +	Increment height by 1",
			"CTRL-W -	Decrement height by 1",
			"CTRL-W =	Make all windows have equal height&width",
			"vert res N	Set widht to N",
			"res N		Set height to N",
			"CTRL-W r	Rotate windows down to right",
			"CTRL-W J	Move window to bottom",
			"CTRL-W K	Move window to top",
			"CTRL-W H	Move window to left",
			"CTRL-W L	Move window to right",
			"",
			"-- Text Macros",
			"U			Puts text uppercase (visual mode)",
			"u			Puts text lowercase (visual mode)",
			"~			Toggle text case",
			"gv			Reselects last selection",
			"yw			Yank word",
			"CTRL-a		Increment number",
			"CTRL-x		Decrement number",
			"g CTRL-a	Increment numbers in a line",
			"g CTRL-x	Decrement numbers in a line",
			"",
			"-- Movement Macros",
			"%			Go to the matching item",
			"[%			Jump to the first matching item",
			"]%			Jump to the last matching item",
			"",
			"-- Commands",
			":r !cmd	Pastes command output to the file"
		})
		vim.cmd("split")
		vim.api.nvim_win_set_buf(0, buf)
		vim.bo[buf].modifiable = false
		vim.bo[buf].buftype = "nofile"
		vim.bo[buf].bufhidden = "wipe"
	end,
	{}
)

vim.api.nvim_create_user_command("RunT",
	function(args)
		local buf = vim.api.nvim_create_buf(false, true)
		local win = vim.api.nvim_open_win(buf, true, {
			width = vim.o.columns,
			height = 15,
			style = "minimal",
			split = "below",
		})
		if vim.fn.has("win32") == 1 then
			shell = { "powershell", "/c", args.args }
		else
			shell = { "bash", "-c", args.args }
		end
		vim.fn.jobstart(shell, { term = true, cwd = vim.fn.getcwd() })
		vim.cmd("startinsert")

		-- To make relative numbers appear in the terminal
		vim.wo[win].number = true
		vim.wo[win].relativenumber = true
	end, {
		nargs = '+',
		desc = "Run any terminal command"
	}
)

