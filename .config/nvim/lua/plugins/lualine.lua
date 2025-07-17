return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function(_, opts)
    -- [[ Configure Lualine ]]
    -- See `:help lualine` and `:help lualine.setup()`

    opts.theme = "onedark"
    opts.disabled_filetypes = {
      "lazy",
      "mason",
      "neo-tree",
      "toggleterm",
    }

    require("lualine").setup({ options = opts })
  end,
}
