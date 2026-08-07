return {
  "saghen/blink.cmp",
  opts = {
    -- Nested block configuration fallback
    completion = {
      trigger = {
        prefetch_on_insert = false,
        show_on_keyword = false,
        show_on_trigger_character = false,
      },
      menu = { auto_show = false },
      ghost_text = { enabled = false },
      documentation = { auto_show = false },
    },
    keymap = {
<<<<<<< HEAD
      preset = "default",
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      preset = "super-tab",
    },
    sources = {
      providers = {
        snippets = {
          min_keyword_length = 0,
        },
      },
    },
  },
}
