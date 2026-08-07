-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

--- locate .make.sh (upwards upto home) and set it a makeprg
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  callback = function()
    local root =
      vim.fs.find(".make.sh", { upward = true, path = vim.fn.expand("%:p:h"), stop = vim.loop.os_homedir() })[1]
    if root then
      vim.opt_local.makeprg = vim.fn.fnameescape(root)
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
