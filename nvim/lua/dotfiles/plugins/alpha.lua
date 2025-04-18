return {
	"goolord/alpha-nvim",
	dependecies = {
		"echasnovski/mini.icons",
	},
	config = function()
		local quotes_file = os.getenv("HOME") .. "/.config/nvim/Quotes/"
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = 
		{
				[[	⠸⣿⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠔⠒⠒⠒⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[	⠀⠀⠙⠻⣿⣷⣦⣀⠀⠀⠀⢀⣾⣷⠀⠘⠀⠀⠀⠙⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[	⠀⠀⠀⠀⠀⠉⠛⠙⢏⢩⣶⣿⣿⠿⠖⠒⠤⣄⠀⠀⠈⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠋⢅⡈⠐⠠⢀⠀⠈⢆⠀⠀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠐⠠⢀⠩⠀⢸⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[	⠀⣿⣹⠆⣿⣉⢀⡟⡄⣰⠉⠂⢸⣏⠁⠀⠀⠀⡌⠀⠀⠸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[	⠀⠛⠀⠀⠓⠒⠘⠉⠛⠘⠒⠃⠘⠒⠂⠀⠀⢰⠁⠀⠀⠀⠑⢤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[	⠀⠀⠀⢦⢠⡄⡄⢠⣦⠀⣔⠢⠀⠀⠀⠀⡠⠃⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠒⠒⠤⢄⣀⠤⠔⠒⡄]],
				[[	⠀⠀⠀⠸⠏⠳⠃⠟⠺⠆⠬⠽⠀⠀⠀⢰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇]],
				[[	⠀⣄⢀⡀⣠⠀⢠⡀⣠⢠⡀⠀⣠⢀⡀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⠀]],
				[[	⠀⡏⢿⡇⣿⣒⠈⣧⡇⢸⣒⡂⣿⢺⡁⠀⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡤⠊⠀⠀]],
				[[	⠀⠀⠈⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡸⠀⠀⠀⠀]],
				[[	⠀⠀⠀⠀⠀⣼⣳⠀⡟⣼⠀⠀⠀⠀⠀⠀⠀⠈⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠇⠀⠀⠀⠀]],
				[[	⠀⠀⠀⠀⠀⠃⠈⠃⠃⠘⠀⠀⠀⠀⠀⠀⠀⠀⠈⢆⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⢀⠎⠀⠀⠀⠀⠀]],
				[[	⡖⢲⡄⣶⣲⡆⢲⠒⣶⢀⡖⢲⠀⡶⡄⡆⠀⠀⠀⠀⣿⠁⠀⠈⠑⠢⣄⠀⠀⠀⢠⠎⠀⠀⠀⠀⠀⠀]],
				[[	⠳⠼⠃⠿⠀⠀⠸⠀⠿⠈⠣⠞⠀⠇⠹⠇⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠙⣢⡴⠁⠀⠀⠀⠀⠀⠀⠀]],
				[[	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣶⣶⣶⣾⣿⡿⠀⠀⠀⠀⠀⠀⠀⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⢀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣶⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
				[[	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⠛⠉⠻⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		}
		
		dashboard.section.buttons.val = {
			dashboard.button("c", " Create New File", function()
				vim.ui.input({ prompt = "File Name: " }, function(input)
					if input and input ~= "" then
						vim.cmd("edit " .. input)
					end
				end)
			end),
			dashboard.button("r", " Recent Files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("f", "󰮗 Find Files", "<cmd>Telescope find_files<CR>"),
			dashboard.button("q", "󰗼 Quit", "<cmd>q<CR>")
		}

		local quote = function(file_name)
			local file = assert(io.open(file_name, "r"))
			math.randomseed(os.time())
			file:close()
			local lines = {}
			for line in io.lines(file_name) do
				lines[#lines + 1] = line
			end
			return lines[math.random(#lines)]
		end

		local getQuote = function()
			local command = "ls " .. quotes_file .. " | grep -vi Quotes | shuf -n 1"
			local handle = io.popen(command)
			local name = handle:read()
			handle:close()
			return name .. " - " .. quote(quotes_file .. name)
		end
		
		dashboard.section.footer.val = {
			getQuote(),
		}

		require("alpha").setup(
			dashboard.opts
		)

		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
