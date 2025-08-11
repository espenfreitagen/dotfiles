vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("core.options")
require("core.keymaps")
--require("core.highlight")

-- Lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Load all plugin specs from lua/plugins/*.lua
require("lazy").setup({
	{ import = "plugins" },
}, {
	defaults = { lazy = true },
})
