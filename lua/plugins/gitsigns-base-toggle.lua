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
          if orig_on_attach(bufnr) == false then
            return false
          end
        end

        local gs = require("gitsigns")
        local function branching_point(notify)
          local cwd = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ":p:h")
          local base, ref = require("config.git_base").resolve(cwd)
          if base then
            vim.api.nvim_buf_call(bufnr, function()
              gs.change_base(base)
            end)
          end
          if notify then
            vim.notify(
              base and ("Gitsigns base: " .. base .. " (" .. ref .. ")")
                or ("Cannot find branching point against " .. ref),
              base and vim.log.levels.INFO or vim.log.levels.WARN
            )
          end
        end

        vim.schedule(function()
          if vim.api.nvim_buf_is_loaded(bufnr) then
            branching_point(false)
          end
        end)

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

        vim.keymap.set("n", "<leader>guB", function()
          branching_point(true)
        end, { buffer = bufnr, desc = "Git signs: nearest branching-point" })
      end
    end,
  },
}
