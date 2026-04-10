vim.pack.add({ "https://github.com/nvim-lua/plenary.nvim" })
vim.pack.add({ "https://github.com/nvim-telescope/telescope.nvim" })

local telescope = require("telescope")
local actions   = require("telescope.actions")
local builtin   = require("telescope.builtin")

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
        },
    },
})

local map = vim.keymap.set

-- Buffers & quick access
map("n", "<leader>,",      "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",                              { desc = "Switch Buffer" })
map("n", "<leader>:",      "<cmd>Telescope command_history<cr>",                                                       { desc = "Command History" })
map("n", "<leader><space>", builtin.find_files,                                                                        { desc = "Find Files" })

-- Find
map("n", "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true ignore_current_buffer=true<cr>",       { desc = "Buffers" })
map("n", "<leader>fB", "<cmd>Telescope buffers<cr>",                                                                   { desc = "Buffers (all)" })
map("n", "<leader>ff", builtin.find_files,                                                                             { desc = "Find Files" })
map("n", "<leader>fF", function() builtin.find_files({ cwd = vim.uv.cwd() }) end,                                     { desc = "Find Files (cwd)" })
map("n", "<leader>fg", "<cmd>Telescope git_files<cr>",                                                                 { desc = "Git Files" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>",                                                                  { desc = "Recent Files" })
map("n", "<leader>fR", function() builtin.oldfiles({ cwd = vim.uv.cwd() }) end,                                       { desc = "Recent Files (cwd)" })

-- Git
map("n", "<leader>gc", "<cmd>Telescope git_commits<cr>",  { desc = "Commits" })
map("n", "<leader>gs", "<cmd>Telescope git_status<cr>",   { desc = "Git Status" })
map("n", "<leader>gS", "<cmd>Telescope git_stash<cr>",    { desc = "Git Stash" })

-- Search
map("n", '<leader>s"', "<cmd>Telescope registers<cr>",                                                               { desc = "Registers" })
map("n", "<leader>s/", "<cmd>Telescope search_history<cr>",                                                           { desc = "Search History" })
map("n", "<leader>sa", "<cmd>Telescope autocommands<cr>",                                                             { desc = "Autocommands" })
map("n", "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>",                                               { desc = "Buffer Lines" })
map("n", "<leader>sc", "<cmd>Telescope command_history<cr>",                                                          { desc = "Command History" })
map("n", "<leader>sC", "<cmd>Telescope commands<cr>",                                                                 { desc = "Commands" })
map("n", "<leader>sd", "<cmd>Telescope diagnostics<cr>",                                                              { desc = "Diagnostics" })
map("n", "<leader>sD", "<cmd>Telescope diagnostics bufnr=0<cr>",                                                      { desc = "Buffer Diagnostics" })
map("n", "<leader>sg", builtin.live_grep,                                                                             { desc = "Live Grep" })
map("n", "<leader>sG", function() builtin.live_grep({ cwd = vim.uv.cwd() }) end,                                     { desc = "Live Grep (cwd)" })
map("n", "<leader>sh", "<cmd>Telescope help_tags<cr>",                                                                { desc = "Help" })
map("n", "<leader>sH", "<cmd>Telescope highlights<cr>",                                                               { desc = "Highlights" })
map("n", "<leader>sj", "<cmd>Telescope jumplist<cr>",                                                                 { desc = "Jumplist" })
map("n", "<leader>sk", "<cmd>Telescope keymaps<cr>",                                                                  { desc = "Keymaps" })
map("n", "<leader>sl", "<cmd>Telescope loclist<cr>",                                                                  { desc = "Location List" })
map("n", "<leader>sm", "<cmd>Telescope marks<cr>",                                                                    { desc = "Marks" })
map("n", "<leader>sM", "<cmd>Telescope man_pages<cr>",                                                                { desc = "Man Pages" })
map("n", "<leader>so", "<cmd>Telescope vim_options<cr>",                                                              { desc = "Options" })
map("n", "<leader>sq", "<cmd>Telescope quickfix<cr>",                                                                 { desc = "Quickfix" })
map("n", "<leader>sR", "<cmd>Telescope resume<cr>",                                                                   { desc = "Resume" })
map("n", "<leader>sw", function() builtin.grep_string({ word_match = "-w" }) end,                                    { desc = "Word Under Cursor" })
map("n", "<leader>sW", function() builtin.grep_string({ cwd = vim.uv.cwd(), word_match = "-w" }) end,                { desc = "Word Under Cursor (cwd)" })
map("x", "<leader>sw", builtin.grep_string,                                                                           { desc = "Selection" })
map("x", "<leader>sW", function() builtin.grep_string({ cwd = vim.uv.cwd() }) end,                                   { desc = "Selection (cwd)" })

-- Misc
map("n", "<leader>uC", function() builtin.colorscheme({ enable_preview = true }) end, { desc = "Colorscheme Preview" })
