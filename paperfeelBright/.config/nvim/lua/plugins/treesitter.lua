--  Treesitter + rainbow parens (https://github.com/nvim-treesitter/nvim-treesitter)
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"bash",
				"vim",
				"markdown",
				"json",
				"yaml",
				"html",
				"css",
				"javascript",
				"python",
				"tsx",
				"php",
				"norg",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})
	end,
}
