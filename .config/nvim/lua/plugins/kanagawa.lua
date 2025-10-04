return {
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     style = "day",
  --     transparent = true,
  --     styles = {
  --       sidebars = false,
  --       floats = false,
  --     },
  --   },
  --   config = function(_, opts)
  --     require("tokyonight").setup(opts)
  --     vim.cmd.colorscheme("tokyonight")
  --   end,
  -- },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        -- dark = "mocha",
      },
      transparent_background = true, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "light",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {},
      custom_highlights = {},
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        neotree = true,
        treesitter = true,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },
  -- {
  --   "navarasu/onedark.nvim",
  --   name = "onedark",
  --   priority = 1000,
  --   opts = {
  --     -- style = "light",
  --     transparent = true,
  --   },
  --   config = function(_, opts)
  --     require("onedark").setup(opts)
  --     vim.cmd.colorscheme("onedark")
  --   end,
  -- },
  -- {
  --   "shaunsingh/nord.nvim",
  --   enabled = false,
  --   config = function()
  --     vim.g.nord_contrast = true
  --     -- vim.g.nord_borders = false
  --     vim.g.nord_disable_background = true
  --     vim.g.nord_italic = false
  --     vim.g.nord_uniform_diff_background = true
  --     vim.g.nord_bold = false
  --
  --     -- Load the colorscheme
  --     require("nord").set()
  --   end,
  -- },
  -- {
  --   "Mofiqul/adwaita.nvim",
  --   lazy = false,
  --   priority = 1000,
  --
  --   -- configure and set on startup
  --   config = function()
  --     -- vim.g.adwaita_darker = true -- for darker version
  --     -- vim.g.adwaita_disable_cursorline = true -- to disable cursorline
  --     -- vim.g.adwaita_transparent = true -- makes the background transparent
  --     vim.cmd.colorscheme("adwaita")
  --   end,
  -- },
}
