vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "paperfeel-dark",
	callback = function()
		-- Sikrer at light faktisk blir brukt etter :colorscheme
		vim.o.background = "dark"
		require("paperfeel").setup({ theme = "dark" })
		require("paperfeel").colorscheme()
	end,
})
