return {
	"nvim-lualine/lualine.nvim",
	dependecies = {
		"echasnovski/mini.icons",
	},
	config = function()
		require("lualine").setup({
			options = {
				theme = "ayu_dark",
			},
		})
	end
}
