return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      -- Disable automatic trigger
      trigger = {
        prefetch_on_insert = false,
        show_on_keyword = false,
        show_on_trigger_character = false,
      },
      -- Show documentation only when manually triggered
      documentation = { auto_show = false },
    },
    keymap = {
      preset = "default",
      -- Use Ctrl + Space to trigger completion manually
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
    },
  },
}
