if vim.g.vscode then
  -- VS Code extension
else
  -- Ordinary NeoVim
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
end
