-- Lukas indent blankline (https://github.com/lukas-reineke/indent-blankline.nvim)
return {
	"lukas-reineke/indent-blankline.nvim",
	lazy = true,
	event = "UiEnter",
	main = "ibl",
	opts = {
		indent = { char = "⸽" },
		scope = {
			enabled = true,
			show_start = true,
			show_end = true,
			highlight = { "Function", "Label" },
		},
		whitespace = {
			remove_blankline_trail = true,
		},
		exclude = {
			filetypes = { "dashboard", "help", "lazy", "alpha" },
		},
	},
}
