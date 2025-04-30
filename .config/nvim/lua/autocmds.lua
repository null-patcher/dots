-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- when vim closes, save the session
vim.api.nvim_create_autocmd({ "VimLeavePre" }, {
  desc = "Save session on exit",
  callback = function()
    require("persistence").save()
  end,
})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  desc = "Load session on start",
  -- enable nested to prevent file type not being set issues when session is restored
  -- https://github.com/echasnovski/mini.nvim/issues/1133#issuecomment-2282721563
  nested = true,
  callback = function()
    if vim.fn.expand("%:t") == "" then
      require("persistence").load()
    end
  end,
})
