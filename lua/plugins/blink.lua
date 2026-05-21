return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      documentation = {
        auto_show = false,
      },
      ghost_text = {
        enabled = false,
      },
      -- Insert completion item on selection, don't select by default
      list = {
        selection = {
          auto_insert = false,
        },
      },
      menu = {
        draw = {
          treesitter = {},
        },
      },
    },
    cmdline = {
      enabled = false,
    },
    sources = {
      default = { "lsp", "path", "snippets" },
    },
    keymap = {
      preset = "super-tab",
    },
  },
}
