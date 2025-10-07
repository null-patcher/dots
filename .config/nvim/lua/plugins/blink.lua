return {
  "saghen/blink.cmp",
  build = "cargo build --release",
  dependencies = "rafamadriz/friendly-snippets",
  version = "*",
  opts = {
    keymap = {
      preset = "default",
      -- ['<Esc>'] = { 'hide', 'fallback'},
      -- ['<C-c>'] = { 'hide', 'fallback'},
      -- ['<C-y'] = { 'select_and_accept', 'hide' },
    },
    appearance = { use_nvim_cmp_as_default = true, nerd_font_variant = "mono" },
    sources = { default = { "lsp", "path", "snippets", "buffer" } },
    completion = {
      accept = { auto_brackets = { enabled = true } },
      documentation = { auto_show = true, auto_show_delay_ms = 200 },
      ghost_text = { enabled = vim.g.ai_cmp },
    },
  },
  opts_extend = { "sources.default" },
}
