-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.shiftwidth = 4
opt.tabstop = 4

--- local
vim.api.nvim_create_autocmd("BufReadPre", {
  pattern = "*",
  callback = function()
    local local_script = "./.make.sh"
    if vim.fn.filereadable(local_script) == 1 then
      -- % expands to the current file name, you can adjust the arguments
      vim.g.makeprg = local_script .. " %"
      -- print("callback: .make.sh found", vim.g.makeprg)
    end
  end,
})

vim.g.lazyvim_python_lsp = "ty"
vim.g.exrc = true -- allow project-local config files
vim.g.secure = true -- sandbox them (no shell commands etc.)

if vim.fn.executable("nvr") == 1 then
  local nvr = "nvr --servername " .. vim.v.servername .. " "
  vim.env.GIT_EDITOR = nvr .. "-cc split +'setl bh=delete' --remote-wait"
  vim.env.EDITOR = nvr .. "-l --remote" -- (Optional)
  vim.env.VISUAL = nvr .. "-l --remote" -- (Optional)
end

-- Enable patchmode to generate a .orig backup file on the first save
vim.opt.patchmode = ".orig"
vim.opt.backupdir = vim.fn.stdpath("data") .. "/backup//"
local backup_dir = vim.fn.expand(vim.opt.backupdir._value:match("(.*)//$") or vim.opt.backupdir._value)
if vim.fn.isdirectory(backup_dir) == 0 then
  vim.fn.mkdir(backup_dir, "p")
end

-- env
vim.env.GOROOT = "/opt/homebrew/Cellar/go/1.26.5/libexec"
