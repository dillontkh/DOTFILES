if vim.g.vscode then
  -- VS Code extension
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  
else
  -- Ordinary NeoVim
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
end
