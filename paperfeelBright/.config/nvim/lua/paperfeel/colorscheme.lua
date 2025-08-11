local config = require("paperfeel.config")
vim.o.background = config.theme

local colorscheme = {
	standardWhite = "#ffffff",
	standardBlack = "#000000",
}

if vim.o.background == "light" then
	colorscheme.editorBackground = config.transparent and "none" or "#fffd70"
	colorscheme.sidebarBackground = "#fffae3"
	colorscheme.popupBackground = "#fffab2"
	colorscheme.floatingWindowBackground = "#fffae3"
	colorscheme.menuOptionBackground = "#f5de76"

	colorscheme.mainText = "#4a4a4a"
	colorscheme.emphasisText = "#000000"
	colorscheme.commandText = "#4a4a4a"
	colorscheme.inactiveText = "#9e9e9e"
	colorscheme.disabledText = "#d0d0d0"
	colorscheme.lineNumberText = "#a1a1a1"
	colorscheme.selectedText = "#000000"
	colorscheme.inactiveSelectionText = "#757575"

	colorscheme.windowBorder = "#c2c3c5"
	colorscheme.focusedBorder = "#aaaaaa"
	colorscheme.emphasizedBorder = "#999999"

	colorscheme.syntaxFunction = "#2300d4"
	colorscheme.syntaxError = "#ff980a"
	colorscheme.syntaxKeyword = "#4a4a4a"
	colorscheme.errorText = "#d32f2f"
	colorscheme.warningText = "#d95550"
	colorscheme.linkText = "#1976d2"
	colorscheme.commentText = "#848484"
	colorscheme.stringText = "#22863a"
	colorscheme.successText = "#2efc00"
	colorscheme.warningEmphasis = "#cd9731"
	colorscheme.specialKeyword = "#800080"
	colorscheme.syntaxOperator = "#a1a1a1"
	colorscheme.foregroundEmphasis = "#d32f2f"
	colorscheme.terminalGray = "#4a4a4a"
	-- NEORG SPECIFIC

	-- headings
	colorscheme.heading1 = "#000000"
	colorscheme.heading2 = "#140075"
	colorscheme.heading3 = "#854e01"
	colorscheme.heading4 = "#327844"
	colorscheme.heading5 = "#1b9199"
	colorscheme.heading6 = "#140099"

	-- lists
	--	vim.api.nvim_set_hl(0, "@neorg.markup.list.uncategorized", { fg = colorscheme.bulletSymbol })
	--	vim.api.nvim_set_hl(0, "@neorg.markup.list.numbered", { fg = colorscheme.listNumbered })
	--	vim.api.nvim_set_hl(0, "@neorg.markup.list.content", { fg = colorscheme.listContent })

	-- tags
	--	vim.api.nvim_set_hl(0, "@neorg.tags.name", { fg = colorscheme.tags })

	-- links
	--	vim.api.nvim_set_hl(0, "@neorg.markup.link.file", { fg = colorscheme.linkName })
	--	vim.api.nvim_set_hl(0, "@neorg.markup.link.description", { fg = colorscheme.linkDescription })
	--	vim.api.nvim_set_hl(0, "@neorg.markup.raw.link.url", { fg = colorscheme.linkUrl })

	-- code, inline and block
	--	vim.api.nvim_set_hl(0, "@neorg.markup.inline.code", { fg = colorscheme.codeInline })
	--	vim.api.nvim_set_hl(0, "@neorg.markup.code.block", { fg = colorscheme.blockCode })
	--	vim.api.nvim_set_hl(0, "@neorg.markup.code.block.name", { fg = colorscheme.blockLanguageHint })

	-- bold, italic and strikethrough
	--	vim.api.nvim_set_hl(0, "@neorg.markup.bold", { fg = colorscheme.bold})
	colorscheme.italicFg = "#4a4a4a"
	colorscheme.italicBg = "#fffd70"
	--	vim.api.nvim_set_hl(0, "@neorg.markup.strikethrough", { fg = colorscheme.strikethrough})

	--	quotes and admonitions
	--	vim.api.nvim_set_hl(0, "@neorg.markup.quote", { fg = colorscheme.blockQuote})
	--	vim.api.nvim_set_hl(0, "@neorg.markup.admonition.title", { fg = colorscheme.titleAdmonition})
	--	vim.api.nvim_set_hl(0, "@neorg.markup.admonition.body", { fg = colorscheme.contentAdmonition})
else
	colorscheme.editorBackground = config.transparent and "none" or "#22863a"
	colorscheme.sidebarBackground = "#ff7a84"
	colorscheme.popupBackground = "#292929"
	colorscheme.floatingWindowBackground = "#383838"
	colorscheme.menuOptionBackground = "#282828"

	colorscheme.mainText = "#4a4a4a"
	colorscheme.emphasisText = "#4a4a5a"
	colorscheme.commandText = "#6a6a6a"
	colorscheme.inactiveText = "#484848"
	colorscheme.disabledText = "#848484"
	colorscheme.lineNumberText = "#727272"
	colorscheme.selectedText = "#ff7a84"
	colorscheme.inactiveSelectionText = "#6a6a6a"

	colorscheme.windowBorder = "#2a2a2a"
	colorscheme.focusedBorder = "#444444"
	colorscheme.emphasizedBorder = "#363636"

	colorscheme.syntaxError = "#ff7a84"
	colorscheme.syntaxFunction = "#79b8ff"
	colorscheme.warningText = "#ff9800"
	colorscheme.syntaxKeyword = "#b392f0"
	colorscheme.linkText = "#9db1c5"
	colorscheme.stringText = "#ffab70"
	colorscheme.warningEmphasis = "#cd9731"
	colorscheme.successText = "#22863a"
	colorscheme.errorText = "#cd3131"
	colorscheme.specialKeyword = "#800080"
	colorscheme.commentText = "#6b737c"
	colorscheme.syntaxOperator = "#bbbbbb"
	colorscheme.foregroundEmphasis = "#f5de76"
	colorscheme.terminalGray = "#5c5c5c"
end

return colorscheme
