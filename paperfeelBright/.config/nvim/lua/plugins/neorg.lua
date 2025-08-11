-- Neorg (https://github.com/nvim-neorg/neorg)
return {
	"nvim-neorg/neorg",
	ft = "norg",
	build = ":Neorg sync-parsers",
	cmd = { "Neorg" },
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-neorg/neorg-telescope",
	},
	lazy = false,
	version = "*",
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {}, -- Basic modules
				["core.concealer"] = { -- Nice symbols for bullets etc.
					config = {
						folds = true,
						init_open_folds = "never",
						icon_preset = "basic",
						icons = {
							code_block = {
								conceal = true,
								content_only = true,
								insert_enable = true,
							},
							heading = {
								icons = {
									"󰂵",
									"󰘩",
									"󰫤",
									"󰫢",
									"󰓐",
									"󰫊",
								},
							},
							list = {
								icons = {
									"󰇜󰌖",
									"󰇜󰇜󰌖",
									"󰇜󰇜󰇜󰌖",
									"󰇜󰇜󰇜󰇜󰌖",
									"󰇜󰇜󰇜󰇜󰇜󰌖",
									"󰇜󰇜󰇜󰇜󰇜󰇜󰌖",
								},
							},
						},
					},
				},
				["core.qol.todo_items"] = {}, -- Smart TODOs
				["core.summary"] = {}, -- Shows na overviw of projectstructure
				["core.highlights"] = {}, -- Better visibility in codeblocks etc
				["core.export"] = {}, -- Eksport to Markdown/PDF
				["core.export.markdown"] = {}, -- Eksport: Markdown
				["core.qol.toc"] = {},
				["core.dirman"] = { -- Directory manager
					config = {
						workspaces = {
							notes = "~/notes",
							hackerpi = "~/Projects/hackerpi/Documents",
							Notes = "~/Notes",
						},
						default_workspace = "Notes",
					},
				},
				["core.keybinds"] = {}, -- Provide key mappings
				["core.promo"] = {},
				["core.journal"] = { -- Journal module
					config = {
						workspace = "Notes",
					},
				},
			},
		})

		vim.wo.foldlevel = 1
		vim.wo.conceallevel = 2
	end,
}
