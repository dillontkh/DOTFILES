return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
        vim.fn["mkdp#util#install"]()
    end,
    keys = function()
        return {
            { "<leader>mp", "<cmd>MarkdownPreview<cr>", desc = "Start markdown preview" },
            { "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", desc = "Stop markdown preview" },
        }
    end,
}
