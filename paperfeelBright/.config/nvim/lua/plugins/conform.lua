-- conform (https://github.com/stevearc/conform.nvim)
return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" }, -- Lazy-load before save
	opts = {
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			python = { "black", "ruff" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			tsx = { "prettier" },
			json = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			sh = { "shfmt" },
			markdown = { "prettier" },
			lua = { "stylua" },
		},
		formatters = {
			stylua = {
				args = {
					"--search-parent-directories",
					"--stdin-filepath",
					"$FILENAME",
					"-",
				},
			},
		},
	},
}
