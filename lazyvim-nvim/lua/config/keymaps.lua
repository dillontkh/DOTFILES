-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down and center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up and center cursor" })

-- Harpoon
local harpoon = require("harpoon")

-- vim.keymap.set("n", "<leader>a", function()
--   harpoon:list():append()
-- end, { desc = "Add buffer to harpoon" })

vim.keymap.set("n", "<leader>h", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Open harpoon menu" })

vim.keymap.set("n", "<C-h>", function()
  harpoon:list():select(1)
end, { desc = "Quick swap to harpoon 1 " })

vim.keymap.set("n", "<C-j>", function()
  harpoon:list():select(2)
end, { desc = "Quick swap to harpoon 2 " })

vim.keymap.set("n", "<C-k>", function()
  harpoon:list():select(3)
end, { desc = "Quick swap to harpoon 3 " })

vim.keymap.set("n", "<C-l>", function()
  harpoon:list():select(4)
end, { desc = "Quick swap to harpoon 4 " })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-[>", function()
  harpoon:list():prev()
end, { desc = "Switch to previous harpoon window" })
vim.keymap.set("n", "<C-]>", function()
  harpoon:list():next()
end, { desc = "Switch to next harpoon window" })
