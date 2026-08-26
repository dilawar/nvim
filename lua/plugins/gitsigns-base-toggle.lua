return {
  {
    "lewis6991/gitsigns.nvim",
    enabled = true,
    opts = function(_, opts)
      local orig_on_attach = opts.on_attach

      local function git(bufnr, args)
        local file = vim.api.nvim_buf_get_name(bufnr)
        if file == "" then
          return nil
        end

        local cwd = vim.fn.fnamemodify(file, ":p:h")
        local cmd = vim.list_extend({ "git", "-C", cwd }, args)
        local res = vim.system(cmd, { text = true }):wait()
        if res.code ~= 0 then
          return nil
        end
        return vim.trim(res.stdout)
      end

      opts.on_attach = function(bufnr)
        if orig_on_attach then
          orig_on_attach(bufnr)
        end

        local gs = require("gitsigns")

        vim.keymap.set("n", "<leader>gui", function()
          gs.reset_base()
          vim.notify("Gitsigns base: index")
        end, { buffer = bufnr, desc = "Git signs: index base" })

        vim.keymap.set("n", "<leader>gub", function()
          local upstream = git(bufnr, { "rev-parse", "--abbrev-ref", "--symbolic-full-name", "@{upstream}" })
          if not upstream or upstream == "" then
            upstream = "origin/master"
          end

          local base = git(bufnr, { "merge-base", "HEAD", upstream })
          if not base or base == "" then
            vim.notify("Could not compute merge-base", vim.log.levels.WARN)
            return
          end

          gs.change_base(base)
          vim.notify("Gitsigns base: " .. base .. " (" .. upstream .. ")")
        end, { buffer = bufnr, desc = "Git signs: merge-base base" })
      end
    end,
  },
}
