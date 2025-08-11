-- Bufferline (https://github.com/akinsho/bufferline.nvim)
return {
	"akinsho/bufferline.nvim",
	lazy = true,
	event = "VeryLazy",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("bufferline").setup({
			highlights = require("paperfeel.integrations.bufferline").highlights({
				transparent = true,
			}),
			options = {
				numbers = "ordinal",
				mode = "buffers",
				diagnostics = "nvim_lsp",
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						separator = true,
					},
				},
				separator_style = "thin", -- or "thick", "thin", "padded_slant"
				show_buffer_icons = true,
				show_buffer_close_icons = false,
				show_close_icon = false,
				enforce_regular_tabs = false,
				always_show_bufferline = true,
			},
		})
	end,
}
