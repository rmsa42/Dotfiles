return {
	"ellisonleao/gruvbox.nvim",
	--priority = 1000,
	config = function()
		require("gruvbox").setup({
			italic = {
				--strings = false,
			},
			contrast = "hard",
			palette_overrides = {
				dark0_hard = "#202020"
			},
			overrides = {
				["@function.builtin"] = { fg = "#7ed4b1" },
			},
			transparent_mode = true,
		})
		--require("gruvbox").load()
		vim.cmd("colorscheme gruvbox")
	end
}
