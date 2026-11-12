local M = {}

function M.resolve(cwd)
  local function git(args)
    local result = vim.system(vim.list_extend({ "git", "-C", cwd }, args), { text = true }):wait()
    if result.code == 0 then
      return vim.trim(result.stdout)
    end
  end

  local branch = git({ "branch", "--show-current" })
  local parent = branch and branch ~= "" and git({ "config", "--get", "git-town-branch." .. branch .. ".parent" })
  local ref = parent or git({ "config", "--get", "git-town.main-branch" }) or "origin"
  return git({ "merge-base", "HEAD", ref }), ref
end

return M
