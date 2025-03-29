--make leader space
vim.g.mapleader = " "

--open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--when using these binds you can move a chunk of text and it will automatically indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--makes search terms stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--copy to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>y", '"+Y')

--allows paste without removing current buffer
vim.keymap.set("x", "<leader>p", '"_dP')

--allows ci without removing current paste buffer
vim.keymap.set("n", "ci(", '"_ci(')
vim.keymap.set("n", "ci)", '"_ci)')
vim.keymap.set("n", "ci{", '"_ci{')
vim.keymap.set("n", "ci}", '"_ci}')
vim.keymap.set("n", "ci'", "\"_ci'")
vim.keymap.set("n", "ci[", '"_ci[')
vim.keymap.set("n", "ci]", '"_ci]')
vim.keymap.set("n", 'ci"', '"_ci"')

--allows use of d without copying
vim.keymap.set("n", "d", '"_d')
vim.keymap.set("v", "d", '"_d')

--inverse tab in insert mode
vim.keymap.set("i", "<S-Tab>", "<C-d>")

--tabs in visual mode
vim.keymap.set("v", "<S-Tab>", "<<")
vim.keymap.set("v", "<Tab>", ">>")

-- command line height (status line still stays)
--opt.cmdheight = 0;
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "C-h", ":TmuxNavigateLeft<CR>")
vim.keymap.set("n", "C-j", ":TmuxNavigateDown<CR>")
vim.keymap.set("n", "C-k", ":TmuxNavigateUp<CR>")
vim.keymap.set("n", "C-l", ":TmuxNavigateRight<CR>")
