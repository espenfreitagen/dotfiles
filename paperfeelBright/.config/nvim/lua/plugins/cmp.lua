-- nvim-cmp (https://github.com/hrsh7th/nvim-cmp)
return {
	"hrsh7th/nvim-cmp",
	lazy = true,
	event = "InsertEnter",
	--event = "UiEnter",
	dependencies = {
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

		-- Load snippets
		require("luasnip.loaders.from_vscode").lazy_load()
		require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/lua/snippets" })

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					else
						fallback()
					end
				end, { "i", "s" }),

				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer", keyword_length = 2 },
				{ name = "path" },
				{ name = "neorg" },
			}),
		})
	end,
}
