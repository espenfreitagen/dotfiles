return  {
  'ntk148v/komau.vim',
  config = function() 
    require('komau').setup({
      style = 'auto', -- "dark" | "light" | "auto" (uses &background)
      transparent = false,
      dim_inactive = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { bold = true },
      },
      integrations = {
        treesitter = true,
        lsp = true,
        telescope = true,
        cmp = true,
        gitsigns = true,
        which_key = true,
        indent_blankline = true,
        mini = true,
        statusline = { lightline = true, lualine = true },
      },
      overrides = {
        Normal = { fg = '#f5eee6', bg = '#222222' },
        TelescopeTitle = function(colors)
          return { fg = colors.bg, bg = colors.accent, bold = true }
        end,
      },
      templates = {
        function(colors, highlights)
          return {
            FloatBorder = { fg = colors.accent, bg = colors.float_bg },
          }
        end,
      },
    })
  
  vim.cmd.colorscheme('komau')
 end 
}
