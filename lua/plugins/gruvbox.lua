return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		-- Set the colorscheme when the plugin is loaded
		-- vim.cmd("colorscheme gruvbox")
		-- Default options:
		require("gruvbox").setup({
			terminal_colors = true, -- add neovim terminal colors
			undercurl = true,
			underline = true,
			bold = true,
			italic = {
				strings = false,
				emphasis = true,
				comments = true,
				operators = false,
				folds = true,
			},
			strikethrough = true,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			invert_intend_guides = false,
			inverse = true, -- invert background for search, diffs, statuslines and errors
			contrast = "soft", -- can be "hard", "soft" or empty string
			palette_overrides = {
				bright_red = "#f07162",
			},
			overrides = {
				Typedef = { link = "GruvboxOrange" },
				Identifier = { link = "GruvboxFg1" },
				-- Delimiter = { link = "GruvboxFg1" },
				-- Function = { link = "GruvboxFg1" },
				-- Operator = { link = "GruvboxFg1" },
				Keyword = { fg = "#f07162", italic = true },
				Conditional = { fg = "#f07162", italic = true },
				Repeat = { fg = "#f07162", italic = true },
				Pmenu = { link = "GruvboxFg1" },
				PmenuSel = { fg = "#bdae93", bg = "#3c3836", bold = true },
				["@type.qualifier"] = { link = "GruvboxOrange" },
				["@keyword.modifier"] = { link = "GruvboxOrange" },
				["@keyword.type"] = { link = "GruvboxOrange" },
				["@variable"] = { link = "GruvboxFg1" },
				["@variable.builtin"] = { link = "GruvboxFg1" },
				["@variable.parameter"] = { link = "GruvboxFg1" },
				["@property"] = { link = "GruvboxBlue" },
				["@lsp.type.keyword"] = { nil },
			},
			dim_inactive = false,
			transparent_mode = true,
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
