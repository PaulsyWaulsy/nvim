vim.pack.add({ "https://github.com/folke/which-key.nvim" })

require("which-key").setup()

require("which-key").add({
    { "<leader>f", group = "find" },
    { "<leader>s", group = "search" },
    { "<leader>g", group = "git" },
    { "<leader>h", group = "hunks" },
    { "<leader>c", group = "code" },
    { "<leader>u", group = "ui" },
})
