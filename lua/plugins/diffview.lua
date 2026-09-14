-- lua/plugins/diffview.lua
return {
  "sindrets/diffview.nvim",
  lazy = true,
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview Open (Working Tree)" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview Current File History" },
    { "<leader>gc", "<cmd>DiffviewClose<cr>", desc = "Diffview Close" },
    {
      "<leader>gB",
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
  },
  config = function()
    require("diffview").setup({
      enhanced_diff_hl = true, -- See better word-level diffs
      view = {
        default = { layout = "diff2_horizontal" },
      },
    })
  end,
}
