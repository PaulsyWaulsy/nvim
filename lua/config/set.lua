local opt = vim.opt

opt.showmode = false

opt.guicursor = ""

--put numbers on the side
opt.number = true
opt.relativenumber = true

--make the time to accept a command to 500 ms instead of 1000 for mappings
opt.updatetime = 500

opt.splitright = true
opt.splitbelow = true

-- time to wait for a keybind to complete
opt.timeoutlen = 500

--enable colored line on cursor
opt.cursorline = true

--will try to be smart about when tabbing so will use multuple if needed
opt.smarttab = true

--automatically indent in functions and what not
opt.autoindent = true

--set tabs to 4 spaces no matter what
opt.tabstop = 4 --amount of spaces for normal tabs
opt.shiftwidth = 4 -- spaces for when using << or >>
opt.expandtab = true -- pressing tab key will insert spaces instead of tab character

--self explainatory
opt.smartindent = true

--keep the signcolumn on
opt.signcolumn = "yes"

--dont wrap text
opt.wrap = false

-- gives me the chunky cursor in insert mode
opt.guicursor = ""

opt.swapfile = false
-- make a backup before overwritting file
opt.backup = true
vim.opt_global.backupdir = os.getenv("HOME") .. "/.nvimTmp/backupdir"
opt.backupcopy = "auto"

-- hold undos into a file for persistance
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.nvimTmp/undodir"

--highlight current search
opt.hlsearch = true

--show search while typing it
opt.incsearch = true

--24 bit color (required for a bunch of plugins)
opt.termguicolors = true

--brings the text up or when hitting 10 above or below the top or bottom
opt.scrolloff = 10

--enable cursor to go one more char in normal mode
vim.cmd("set ve+=onemore")
--turn off the mouse
--opt.mouse = ""

--colorscheme fixing
vim.cmd("set numberwidth=1")

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Set the clipboard for nvim
opt.clipboard = "unnamedplus"

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
