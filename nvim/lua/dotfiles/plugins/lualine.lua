return {
	"nvim-lualine/lualine.nvim",
	dependecies = {
		"echasnovski/mini.icons",
	},
	config = function()
		require("lualine").setup({
			options = {
				theme = "gruvbox",
			},
		})
	end
}
