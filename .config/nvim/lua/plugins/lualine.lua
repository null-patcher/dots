return {
  "nvim-lualine/lualine.nvim",
  enabled = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function(_, opts)
    -- [[ Configure Lualine ]]
    -- See `:help lualine` and `:help lualine.setup()`

    opts.theme = "nord"
    opts.disabled_filetypes = {
      "lazy",
      "mason",
      "neo-tree",
      "toggleterm",
    }

    require("lualine").setup({ options = opts })
  end,
}
