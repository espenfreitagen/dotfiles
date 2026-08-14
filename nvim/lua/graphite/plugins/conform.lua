return {
  "stevearc/conform.nvim",

  opts = {
    formatters_by_ft = {
      c = { "clang_format" },
      python = { "ruff_format" },
      lua = { "stylua" },
      sh = { "shfmt" },
      bash = { "shfmt" },
    },
  },

  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({
          async = true,
          lsp_format = "fallback",
        })
      end,
      desc = "Format buffer",
    },
  },
}
