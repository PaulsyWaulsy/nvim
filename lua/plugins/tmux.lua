vim.pack.add({ "https://github.com/christoomey/vim-tmux-navigator" })

local map = vim.keymap.set
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>",  { silent = true })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>",  { silent = true })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>",    { silent = true })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { silent = true })
