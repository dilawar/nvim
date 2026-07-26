return {
  -- Import the native LazyVim Python extra for foundational tools
  { import = "lazyvim.plugins.extras.lang.python" },

  -- Configure LSP settings
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- 1. Ensure Ruff is active and handles fixes
        ruff = {
          enabled = true,
          init_options = {
            settings = {
              -- Runs Ruff's code rule autofixes seamlessly on save
              fixAll = true,
            },
          },
        },
        -- 2. Explicitly register 'ty' for type-checking diagnostics
        ty = {
          enabled = true,
          autostart = true,
        },
      },
    },
  },
}
