return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    local keymap = vim.keymap.set
    local list = harpoon:list()

    keymap("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(list) end)
    keymap("n", "<leader>a", function() list:add() end)
    keymap("n", "<leader>h", function() list:select(1) end)
    keymap("n", "<leader>j", function() list:select(2) end)
    keymap("n", "<leader>k", function() list:select(3) end)
    keymap("n", "<leader>l", function() list:select(4) end)
  end,
}

