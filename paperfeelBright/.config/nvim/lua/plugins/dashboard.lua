--  Alpha dashboard (https://github.com/goolord/alpha-nvim)
return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Logo
    dashboard.section.header.val = {

     [[ Start Writing ]]
--      [[                   -`                      ]],
--      [[                  .o+`                     ]],
--      [[                 `ooo/                     ]],
--      [[                `+oooo:                    ]],
--      [[               `+oooooo:                   ]],
--      [[               -+oooooo+:                  ]],
--      [[             `/:-:++oooo+:                 ]],
--      [[            `/++++/+++++++:                ]],
--      [[           `/++++++++++++++:               ]],
--      [[          `/+++ooooooooooooo/`             ]],
--      [[         ./ooosssso++osssssso+`            ]],
--      [[        .oossssso-````/ossssss+`           ]],
--      [[       -osssssso.      :ssssssso.          ]],
--      [[      :osssssss/        osssso+++.         ]],
--      [[     /ossssssss/        +ssssooo/-         ]],
--      [[   `/ossssso+/:-        -:/+osssso+-       ]],
--      [[  `+sso+:-`                 `.-/+oso:      ]],
--      [[ `++:.                           `-/+/     ]],
--      [[ .`                                 `/     ]],
    }

    -- Header/Footer/Buttons highlights
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"

    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#c678dd" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { fg = "#7dcfff" })
    vim.api.nvim_set_hl(0, "AlphaFooter", { fg = "#c678dd" })

    -- Buttons
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
      dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
      dashboard.button("n", "  Neorg ", ":Neorg <CR>"),
      dashboard.button("t", "⨈  NeoVim Tutorial", ":Tutor")
    }

    -- Footer
    dashboard.section.footer.val = { " Feel the flow noob " }

    -- Load dashboard
    alpha.setup(dashboard.config)
  end,
}
