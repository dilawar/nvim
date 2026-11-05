-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.exrc = true -- allow project-local config files
opt.relativenumber = false

-- locate .make.sh (upwards upto home) and set it a makeprg
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  callback = function()
    local root =
      vim.fs.find(".make.sh", { upward = true, path = vim.fn.expand("%:p:h"), stop = vim.loop.os_homedir() })[1]
    if root then
      vim.opt_local.makeprg = vim.fn.fnameescape(root)
    end
  end,
})

vim.g.autoformat = false
vim.g.lazyvim_python_lsp = "ty"
vim.g.secure = true -- sandbox them (no shell commands etc.)
