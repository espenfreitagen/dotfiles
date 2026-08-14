-- Core
local keymap = vim.keymap.set
vim.g.mapleader = " "

keymap("n", "<leader>fe", vim.cmd.Ex)
keymap("n", "<leader>q", vim.cmd.q)
keymap("n", "<leader>bd", vim.cmd.bd)
keymap("n", "<leader>w", vim.cmd.w)

-- Navigation
keymap("i", "jk", "<esc>")

-- Treesitter
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
keymap("n", "<leader>fn", "<cmd>Telescope grep_string<CR>")
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "J", "mzJ`z")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

keymap("x", "<leader>p", [["_dP]])

keymap("n", "<leader>y", "\"+y")
keymap("v", "<leader>y", "\"+y")
keymap("n", "<leader>Y", "\"+Y")

keymap("n", "<leader>d", "\"_d")
keymap("v", "<leader>d", "\"_d")

keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
