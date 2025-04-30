return {
  "cristianradulescu/rest.nvim",
  branch = "view-request-headers",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "http")
    end,
  },
  keys = {
    {
      "<leader>hr",
      "<cmd>Rest run<cr>",
      mode = "n",
      desc = "HTTP Request - Run",
    },
    {
      "<leader>he",
      "<cmd>Rest env select<cr>",
      mode = "n",
      desc = "HTTP Request - Select ENV",
    },
  },
}
