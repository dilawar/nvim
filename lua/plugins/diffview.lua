return {
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>g-",
        function()
          local current_file = debug.getinfo(1, "S").source:sub(2)
          local script_dir = vim.fs.dirname(current_file)

          local script_path = script_dir .. "/git_find_nearest_branching_point.sh"
          local handle = io.popen("bash " .. script_path)
          local merge_base = handle:read("*a")
          handle:close()
          vim.notify("Gitdiff merge-base: " .. merge_base)
          local cmd = string.format("DiffviewOpen %s", merge_base)
          vim.cmd(cmd)
          vim.notify("Diffing against branching point: " .. merge_base, vim.log.levels.INFO)
        end,
        desc = "Git Diff From Branching Point",
      },
      {
        "<leader>gd",
        function()
          if next(require("diffview.lib").views) == nil then
            vim.cmd("DiffviewOpen")
          else
            vim.cmd("DiffviewClose")
          end
        end,
        desc = "Toggle Diffview",
      },
      { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "Current File History" },
    },
    config = function()
      require("diffview").setup({
        default_args = { DiffviewOpen = { "--imply-local" } },
      })
    end,
  },
}
