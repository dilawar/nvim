return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          on_init = function(client)
            -- Use the uv-generated .venv if it exists in the root workspace folder
            local root = client.workspace_folders and client.workspace_folders[1].name
            if root then
              local venv_path = root .. "/.venv"
              if vim.uv.fs_stat(venv_path) then
                client.config.settings.python.pythonPath = venv_path .. "/bin/python"
              end
            end
          end,
        },
      },
    },
  },
}
