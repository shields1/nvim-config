return {
  "tpope/vim-fugitive",
  cmd = "Git",
  keys = {
    { "<leader>gs", "<cmd>Git<CR>", desc = "Git Status" },
  },
  config = function()
    -- more key maps or settings in the future...?
  end,
}
