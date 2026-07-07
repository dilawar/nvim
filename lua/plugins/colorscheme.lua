return {
  -- 1. Install the Gruvbox plugin
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- Make sure it loads first
    config = true,
  },
  -- config lazyvim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
    config = function(_, opts)
      -- Force light mode before loading the theme
      vim.o.background = "light"
      require("lazyvim").setup(opts)
    end,
  },
}
