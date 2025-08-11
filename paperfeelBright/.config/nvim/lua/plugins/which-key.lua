--  Which-key (https://github.com/folke/which-key.nvim)
return {
	lazy = true,
	event = "UiEnter",
	"folke/which-key.nvim",
	config = function()
		require("which-key").setup()
	end,
}
