return {
	"williamboman/mason.nvim",
	lazy = true,
	event = "UiEnter",
	build = ":MasonUpdate",
	config = function()
		require("mason").setup()
	end,
}
