return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},

	config = function()
		require("tokyonight").setup({
			styles = {
				keywords = { italic = false }
			},
			on_highlights = function(hl, c)
				local prompt = "#1E71EE"
				hl.TelescopeTitle = { fg = "white" }
				hl.TelescopeBorder = { fg = prompt }
				hl.TelescopePromptBorder = { fg = prompt }
				hl.TelescopePromptTitle = { fg = "white" }
			end
		})
		--vim.cmd[[colorscheme tokyonight-night]]
	end
}
