-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--- local
vim.api.nvim_create_autocmd("BufReadPre", {
  pattern = "*",
  callback = function()
    local local_script = "./.make.sh"
    if vim.fn.filereadable(local_script) == 1 then
      -- % expands to the current file name, you can adjust the arguments
      vim.opt_local.makeprg = local_script .. " %"
    end
  end,
})
