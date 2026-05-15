return {
  {
    "LazyVim/LazyVim",
    opts = function()
      vim.g.lazyvim_rust_diagnostics = "bacon-ls"
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = false,
              loadOutDirsFromCheck = false,
              buildScripts = {
                enable = false,
              },
            },
            checkOnSave = false,
            diagnostics = {
              enable = false,
            },
            procMacro = {
              enable = false,
            },
          },
        },
      },
    },
  },
}
