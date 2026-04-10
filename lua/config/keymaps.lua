vim.g.mapleader = " "

local map = vim.keymap.set

-- File explorer
map("n", "<leader>pv", vim.cmd.Ex)

-- Move selected lines up/down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Keep search matches centred
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Yank to system clipboard
map({ "n", "v" }, "<leader>y", '"+y')
map("n", "<leader>Y", '"+Y')

-- Paste / delete without clobbering the yank register
map("x", "<leader>p", '"_dP')
map({ "n", "v" }, "d", '"_d')
map("n", "ci(", '"_ci(')
map("n", "ci)", '"_ci)')
map("n", "ci{", '"_ci{')
map("n", "ci}", '"_ci}')
map("n", "ci'", "\"_ci'")
map("n", 'ci"', '"_ci"')
map("n", "ci[", '"_ci[')
map("n", "ci]", '"_ci]')

-- Indent / dedent
map("i", "<S-Tab>", "<C-d>")
map("v", "<S-Tab>", "<<")
map("v", "<Tab>", ">>")

-- Terminal
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
