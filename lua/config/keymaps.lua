-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>gD", function()
  local cwd = LazyVim.root.git()
  local function git(args)
    local result = vim.system(vim.list_extend({ "git", "-C", cwd }, args), { text = true }):wait()
    if result.code == 0 then
      return vim.trim(result.stdout)
    end
  end

  local branch = git({ "branch", "--show-current" })
  local parent = branch and branch ~= "" and git({ "config", "--get", "git-town-branch." .. branch .. ".parent" })
  local base = parent or git({ "config", "--get", "git-town.main-branch" }) or "origin"
  if not git({ "merge-base", "HEAD", base }) then
    vim.notify("Cannot find branching point against " .. base, vim.log.levels.WARN)
    return
  end

  Snacks.picker.git_diff({ cwd = cwd, base = base, group = true })
end, { desc = "Git Diff (branching point)" })
