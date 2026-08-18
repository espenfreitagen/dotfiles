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
    keymap("n", "<leader>1", function() list:select(1) end)
    keymap("n", "<leader>2", function() list:select(2) end)
    keymap("n", "<leader>3", function() list:select(3) end)
    keymap("n", "<leader>4", function() list:select(4) end)
  end,
}

