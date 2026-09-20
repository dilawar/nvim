return {
  "andymass/vim-matchup",
  event = "BufReadPost",
  init = function()
    -- May be needed to let vim-matchup seamlessly take over
    vim.g.matchup_matchparen_enabled = 1
  end,
}
