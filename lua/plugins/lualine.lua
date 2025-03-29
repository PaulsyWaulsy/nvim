-- Bubbles config for lualine

-- stylua: ignore
local colors = {
  fg0  = "#080808",
  fg1  = "#d5c4a1",
	GruvboxRed = "#f07162",
	GruvboxYellow = "#fabd2f",
	GruvboxGreen = "#b8bb26",
	GruvboxGray = "#504945",
	GruvboxBlue = "#83a598",
}

local sunflower_theme = {
	normal = {
		a = { fg = colors.fg0, bg = colors.GruvboxYellow },
		b = { fg = colors.fg1, bg = colors.GruvboxGray },
		c = { fg = colors.fg1 },
	},

	insert = { a = { fg = colors.fg0, bg = colors.GruvboxBlue } },
	visual = { a = { fg = colors.fg0, bg = colors.GruvboxGreen } },
	replace = { a = { fg = colors.fg0, bg = colors.GruvboxRed } },

	inactive = {
		a = { fg = colors.fg1, bg = colors.fg0 },
		b = { fg = colors.fg1, bg = colors.fg0 },
		c = { fg = colors.fg1 },
	},
}

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = sunflower_theme,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { { "mode", right_padding = 2 } },
				lualine_b = { "filename", "branch" },
				lualine_c = {
					"%=", --[[ add your center compoentnts here in place of this comment ]]
				},
				lualine_x = {},
				lualine_y = { "filetype", "progress" },
				lualine_z = {
					{ "location", left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
			tabline = {},
			extensions = {},
		})
	end,
}
