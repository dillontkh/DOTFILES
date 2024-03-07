if vim.g.vscode then
  -- VS Code extension
  vim.g.mapleader = " "

  vim.keymap.set("n", "H", "<Cmd>tabp<CR>")
else
  -- Ordinary NeoVim
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
  require("config.harpoon")
end

