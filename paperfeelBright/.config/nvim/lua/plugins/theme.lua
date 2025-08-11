return {
	dir = vim.fn.stdpath("config") .. "/lua/paperfeel",
	name = "paperfeel",
	priority = 1000,
	lazy = false,
	config = function()
		require("paperfeel").setup({
			theme = "light",
			transparent = true,
			italics = {
				comments = true,
				keywords = true,
				functions = true,
				strings = true,
				variables = true,
			},
		})
		require("paperfeel").colorscheme()
	end,
}
