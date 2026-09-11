return {
  "saghen/blink.cmp",
  optional = true,
  opts = {
    completion = {
      menu = { completion = false },
    },
    keymap = {
      preset = "enter",
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<Tab>"] = { "select_next", "fallback" },
    },
  },
}
