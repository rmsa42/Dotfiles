return {
	"goolord/alpha-nvim",
	dependecies = {
		"echasnovski/mini.icons",
	},
	config = function()
		local dashboard = require("alpha.themes.dashboard")
		local startify = require("alpha.themes.startify")

		Headers = {
			{
				[[ ************************ ]],
			},
		}

		-- dashboard.section.header.val = Headers
		dashboard.section.buttons.val = {
			dashboard.button("r", " Recent Files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("f", "󰮗 Find Files", "<cmd>Telescope find_files<CR>"),
			dashboard.button("q", "󰗼 Quit", "<cmd>q<CR>")
		}

		require("alpha").setup(
			dashboard.opts
		)
	end,
}
