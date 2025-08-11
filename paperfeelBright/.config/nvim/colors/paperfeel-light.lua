vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "paperfeel-light",
	callback = function()
		-- Sikrer at light faktisk blir brukt etter :colorscheme
		vim.o.background = "light"
		require("paperfeel").setup({ theme = "light" })
		require("paperfeel").colorscheme()
	end,
})
