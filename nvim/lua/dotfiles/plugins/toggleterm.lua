return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<C-\>]],
			direction = "float",
			autochdir = true,
			persist_mode = false,
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				border = "curved",
			}
		})
	end
}
