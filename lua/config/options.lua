local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.showmode = false
opt.guicursor = ""
opt.termguicolors = true
opt.scrolloff = 10
opt.wrap = false
opt.conceallevel = 2
opt.colorcolumn = "101" -- has to be string

-- Editing
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smarttab = true
opt.autoindent = true
opt.smartindent = true

-- Search
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = false
opt.smartcase = true

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Misc
opt.updatetime = 500
opt.timeoutlen = 500
opt.swapfile = false
opt.clipboard = "unnamedplus"
opt.completeopt = "menuone,noselect,popup"
