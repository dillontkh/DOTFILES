return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
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
    }
  end,
}
