return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lspconfig = require("lspconfig")

    -- Global defaults for all servers
    vim.lsp.config('*', {
      capabilities = vim.lsp.protocol.make_client_capabilities(),
      on_attach = function(client, bufnr)
        local keymap = vim.keymap.set
        keymap("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
        keymap("n", "gr", vim.lsp.buf.references, { buffer = bufnr })
        keymap("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
        keymap("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr })
        keymap("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr })
      end,
    })

    -- Servers you want
    local servers = {
      "lua_ls",
      "pyright",
      "bashls",
      "jsonls",
      "yamlls",
      "html",
      "cssls",
      "tsserver",
    }

    -- Enable each server
    for _, server in ipairs(servers) do
      vim.lsp.enable(server)
    end
  end,
}

