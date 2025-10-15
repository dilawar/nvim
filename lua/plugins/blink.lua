return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      -- Insert completion item on selection, don't select by default
      list = {
        selection = {
          auto_insert = false,
        },
      },
    },
    keymap = {
      preset = "super-tab",
    },
  },
}
