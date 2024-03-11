return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon"):setup({})
  end,
  keys = function()
    local harpoon = require("harpoon")
    return {
      {
        "<leader>a",
        function()
          harpoon:list():append()
        end,
        desc = "Add buffer to harpoon",
      },
      {
        "<leader>h",
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Open harpoon menu",
      },
      {
        "<leader>1",
        function()
          harpoon:list():select(1)
        end,
        desc = "Quick swap to harpoon 1 ",
      },
      {
        "<leader>2",
        function()
          harpoon:list():select(2)
        end,
        desc = "Quick swap to harpoon 2 ",
      },
      {
        "<leader>3",
        function()
          harpoon:list():select(3)
        end,
        desc = "Quick swap to harpoon 3 ",
      },
      {
        "<leader>4",
        function()
          harpoon:list():select(4)
        end,
        desc = "Quick swap to harpoon 4 ",
      },
      {
        "<C-[>",
        function()
          harpoon:list():prev()
        end,
        desc = "Switch to previous harpoon window",
      },
      {
        "<C-]>",
        function()
          harpoon:list():next()
        end,
        desc = "Switch to next harpoon window",
      },
    }
  end,
}
