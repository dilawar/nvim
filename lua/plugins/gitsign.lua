return {
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre", -- Load when opening a file
    opts = {
      -- Basic configuration
      signs = {
        add = { text = "┃" },
        change = { text = "┃" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
      current_line_blame = true, -- Shows git blame for the current line
    },
  },
}
