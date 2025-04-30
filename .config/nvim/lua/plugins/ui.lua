return {
  { -- Useful plugin to show you pending keybinds.
    "folke/which-key.nvim",
    event = "VimEnter", -- Sets the loading event to 'VimEnter'
    opts = {
      { "", group = "[C]ode" },
      { "", desc = "<leader>r_", hidden = true },
      { "", group = "[S]earch" },
      { "", desc = "<leader>s_", hidden = true },
      { "", group = "[W]orkspace" },
      { "", group = "[R]ename" },
      { "", group = "[D]ocument" },
      { "", desc = "<leader>d_", hidden = true },
      { "", desc = "<leader>c_", hidden = true },
      { "", desc = "<leader>w_", hidden = true },
    },
  },
}
