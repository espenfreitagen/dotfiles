-- ~/.config/nvim/lua/core/keymaps.lua
-- Helpfunction for normal and insert mode maps
local function nmap(lhs, rhs, desc)
	vim.keymap.set("n", lhs, rhs, { noremap = true, silent = true, desc = desc })
end

local function imap(lhs, rhs, desc)
	vim.keymap.set("i", lhs, rhs, { noremap = true, silent = true, desc = desc })
end

-- Since Neovim starts up minimal to secure a snappy feel
-- Here is a fallback if something is not loading properly.
nmap("<leader>la", ":Lazy load all<CR>", "Loads all plugins")

--  Navigation
nmap("<C-d>", "<C-d>zz", "Half page down, centered")
nmap("<C-u>", "<C-u>zz", "Half page up, centered")
nmap("n", "nzzzv", "Next search, centered")
nmap("N", "Nzzzv", "Prev search, centered")
nmap("J", "mzJ`z", "Join lines (keep cursor pos)")

-- Window Navigation
nmap("<C-h>", "<C-w>h", "Move to left window")
nmap("<C-l>", "<C-w>l", "Move to right window")
nmap("<C-j>", "<C-w>j", "Move to lower window")
nmap("<C-k>", "<C-w>k", "Move to upper window")

--- Diagnostic
nmap("<leader>ld", vim.diagnostic.open_float, "Line diagnostic (float)")

-- File operations
nmap("<leader>w", ":w<CR>", "Save file")
nmap("<leader>q", ":q<CR>", "Quit")
nmap("<leader>r", ":so %<CR>", "Reload current file")
nmap("<leader>n", ":noh<CR>", "Clear search highlights")

-- File explorer
nmap("<leader>e", "<cmd>Neotree toggle<CR>", "Toggle Neo-tree")

-- Buffers
for i = 1, 9 do
	nmap("<leader>b" .. i, function()
		require("bufferline").go_to(i, true)
	end, "Go to buffer " .. i)
end

nmap("<leader>bn", ":enew<CR>", "New buffer")
nmap("<leader>bd", ":bdelete<CR>", "Delete buffer")
nmap("<Tab>", ":bnext<CR>", "Next buffer")
nmap("<S-Tab>", ":bprevious<CR>", "Previous buffer")

-- Splits
nmap("<leader>|", ":vsplit<CR>", "Vertical split")
nmap("<leader>-", ":split<CR>", "Horizontal split")

-- Resize splits with Ctrl + arrow keys
nmap("<C-Left>", "<C-w><", "shrink horizontally")
nmap("<C-Right>", "<C-w>>", "grow horizontally")
nmap("<C-Up>", "<C-w>+", "grow vertically")
nmap("<C-Down>", "<C-w>-", "shrink vertically")

-- Telescope
nmap("<leader>ff", "<cmd>Telescope find_files<CR>", "Find files")
nmap("<leader>fg", "<cmd>Telescope live_grep<CR>", "Live grep")
nmap("<leader>fb", "<cmd>Telescope buffers<CR>", "Find buffers")
nmap("<leader>fh", "<cmd>Telescope help_tags<CR>", "Help tags")
nmap("<leader>fe", "<cmd>Telescope emoji<CR>", "Pick emoji")

-- Misc utils
nmap("<leader>?", "<cmd>WhichKey<CR>", "Show which-key popup")
nmap("<leader>vpp", "<cmd>e ~/.config/nvim/lua/core/plugins.lua<CR>", "Edit plugin config")
nmap("<leader>vpi", "<cmd>Lazy<CR>", "Open Lazy")
nmap("<leader>fi", "<cmd>NerdIcons<cr>", "Pick icon")

-- DAP Keymaps
nmap("<F5>", function()
	require("dap").continue()
end, "DAP continue")
nmap("<F9>", function()
	require("dap").toggle_breakpoint()
end, "DAP toggle breakpoint")
nmap("<F10>", function()
	require("dap").step_over()
end, "DAP step over")
nmap("<F11>", function()
	require("dap").step_into()
end, "DAP step into")
nmap("<F12>", function()
	require("dap").step_out()
end, "DAP step out")
nmap("<leader>du", function()
	require("dapui").toggle()
end, "Toggle DAP UI")

-- Insert mode
imap("jk", "<ESC>", "Exit insert mode")
