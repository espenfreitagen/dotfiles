-- Emoji-picker for Telescope
-- Telescope (https://github.com/nvim-telescope/telescope.nvim)
return {
	"xiyaowong/telescope-emoji.nvim",
	cmd = "Telescope emoji", -- Lazy load only when used
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("telescope").load_extension("emoji")
	end,
}
