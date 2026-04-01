return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",   -- Important: use the harpoon2 branch for the newer version
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    -- Basic setup (you can pass options here if needed)
    harpoon:setup()

    -- Keymaps (highly recommended)
    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = "Harpoon: Add file" })
    vim.keymap.set("n", "<leader>r", function() harpoon:list():remove() end, { desc = "Harpoon: Remove current" })
    vim.keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Harpoon: Toggle menu" })

    -- Quick navigation to marked files
    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Harpoon: File 1" })
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Harpoon: File 2" })
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Harpoon: File 3" })
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Harpoon: File 4" })
    vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Harpoon: File 5" })

    -- Optional: Navigate to next/previous in list
    vim.keymap.set("n", "<C-S-Left>", function() harpoon:list():prev() end, { desc = "Harpoon: Prev" })
    vim.keymap.set("n", "<C-S-Right>", function() harpoon:list():next() end, { desc = "Harpoon: Next" })
  end,
}
