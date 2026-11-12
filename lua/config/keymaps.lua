-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>gD", function()
  local cwd = LazyVim.root.git()
  local base, ref = require("config.git_base").resolve(cwd)
  if not base then
    vim.notify("Cannot find branching point against " .. ref, vim.log.levels.WARN)
    return
  end

  Snacks.picker.git_diff({ cwd = cwd, base = base, group = true })
end, { desc = "Git Diff (branching point)" })
