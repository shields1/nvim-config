return {
  "mbbill/undotree",
  cmd = "UndotreeToggle",        -- lazy-load only when you use the command
  keys = {
    { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Toggle Undotree" },
  },
  config = function()
    vim.g.undotree_SplitWidth = 40              -- width of the undotree panel
    vim.g.undotree_SetFocusWhenToggle = 1       -- focus undotree when opened
    vim.g.undotree_ShortIndicators = 1          -- use short time indicators
    vim.g.undotree_HighlightChangedText = 1     -- highlight changed text
    vim.g.undotree_HighlightChangedWithSign = 1 -- show signs for changed lines

    -- Optional: Persist undo history across sessions (very useful!)
    if vim.fn.has("persistent_undo") == 1 then
      vim.opt.undodir = vim.fn.expand("~/.undotree/undodir")
      vim.opt.undofile = true
    end
  end,
}
