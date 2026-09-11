return {
  "saghen/blink.cmp",
  optional = true,
  opts = {
    completion = {
      menu = { auto_show = false },
    },
    keymap = {
      preset = "enter",
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<Tab>"] = { "select_next", "fallback" },
    },
  },
}
