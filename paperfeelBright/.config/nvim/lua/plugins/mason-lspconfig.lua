return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = { "williamboman/mason.nvim" },
	lazy = true,
	event = "VeryLazy",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
				"html",
				"cssls",
			},
			automatic_installation = true,
		})
	end,
}
