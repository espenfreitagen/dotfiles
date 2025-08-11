--  Lualine (https://github.com/nvim-lualine/lualine.nvim)
return {
	"nvim-lualine/lualine.nvim",
	lazy = true,
	event = "UiEnter",
	config = function()
		local theme = require("paperfeel.integrations.lualine")

		require("lualine").setup({
			options = {
				theme = {
					normal = {
						a = { bg = "NONE", fg = "#4a4a4a", gui = "bold" },
						b = { bg = "NONE", fg = "#6a6a6a" },
						c = { bg = "NONE", fg = "#585b70" },
					},
					insert = {
						a = { bg = "NONE", fg = "#d95550", gui = "bold" },
					},
					visual = {
						a = { bg = "#f5de76", fg = "#4a4a4a", gui = "bold" },
					},
					replace = {
						a = { bg = "#d95550", fg = "#4a4a4a", gui = "bold" },
					},
					inactive = {
						a = { bg = "NONE", fg = "#6c7086" },
						b = { bg = "NONE", fg = "#6c7086" },
						c = { bg = "NONE", fg = "#6c7086" },
					},
					sections = {
						lualine_a = { "mode" },
						lualine_b = { "branch" },
						lualine_c = { "filename" },
						lualine_x = { "filetype" },
						lualine_y = { "location" },
						lualine_z = { "progress" },
					},
				},
			},
		})
	end,
}
