local colors = {
	GruvboxLightOrange = "#ebdbb2",
	flax = "#928374",
	GruvboxPurple = "#d3869b",
	GruvboxFg2 = "#928374",
	GruvboxOrange = "#fe8109",
	GruvboxGreen = "#b8bb26",
	jordy = "#81aaff",
	GruvboxFg1 = "#ebdbb2",
	GruvboxAqua = "#83a598",
	GruvboxYellow = "#fabd2f",
	GruvboxRed = "#f07162",
	white = "#ffffff",
	black = "#101010",
}

vim.g.colors_name = "solarflare"

-- UI Highlight Groups
vim.api.nvim_set_hl(0, "Visual", { bg = colors.GruvboxFg1, fg = colors.GruvboxFg2 })
vim.api.nvim_set_hl(0, "Search", { bg = colors.GruvboxYellow, fg = colors.black })

vim.api.nvim_set_hl(0, "LineNr", { fg = colors.flax })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.GruvboxYellow })

-- Menu Highlight Groups
vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.GruvboxFg2 })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.GruvboxPurple })

-- Syntaxt Highlight Groups
vim.api.nvim_set_hl(0, "@comment", { fg = colors.flax, italic = true })

vim.api.nvim_set_hl(0, "@constant", { fg = colors.GruvboxPurple })
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = colors.GruvboxPurple })
vim.api.nvim_set_hl(0, "@constant.macro", { fg = colors.GruvboxPurple })

vim.api.nvim_set_hl(0, "@variable", { fg = colors.GruvboxFg1 })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.GruvboxFg1 })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = colors.GruvboxFg1 })
vim.api.nvim_set_hl(0, "@variable.member", { fg = colors.GruvboxFg1 })

vim.api.nvim_set_hl(0, "@string", { fg = colors.GruvboxGreen })
vim.api.nvim_set_hl(0, "@string.documentation", { fg = colors.GruvboxGreen })
vim.api.nvim_set_hl(0, "@string.regexp", { fg = colors.GruvboxGreen })
vim.api.nvim_set_hl(0, "@string.escape", { fg = colors.GruvboxGreen })
vim.api.nvim_set_hl(0, "@string.special", { fg = colors.GruvboxOrange })
vim.api.nvim_set_hl(0, "@string.special.symbol", { fg = colors.GruvboxOrange })
vim.api.nvim_set_hl(0, "@string.special.path", { fg = colors.GruvboxOrange })

vim.api.nvim_set_hl(0, "@character", { fg = colors.GruvboxPurple })
vim.api.nvim_set_hl(0, "@character.special", { fg = colors.GruvboxPurple })

vim.api.nvim_set_hl(0, "@number", { fg = colors.GruvboxPurple })
vim.api.nvim_set_hl(0, "@boolean", { fg = colors.GruvboxPurple })
vim.api.nvim_set_hl(0, "@number.float", { fg = colors.GruvboxPurple })

vim.api.nvim_set_hl(0, "@function", { fg = colors.GruvboxLightOrange })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.GruvboxLightOrange })
vim.api.nvim_set_hl(0, "@function.call", { fg = colors.GruvboxLightOrange })
vim.api.nvim_set_hl(0, "@function.macro", { fg = colors.GruvboxLightOrange })

vim.api.nvim_set_hl(0, "@attribute", { fg = colors.GruvboxOrange })
vim.api.nvim_set_hl(0, "@attribute.builtin", { fg = colors.GruvboxOrange })

vim.api.nvim_set_hl(0, "@parameter", { fg = colors.GruvboxPurple })

vim.api.nvim_set_hl(0, "@keyword", { fg = colors.GruvboxOrange, italic = true })
vim.api.nvim_set_hl(0, "@keyword.coroutine", { fg = colors.GruvboxOrange, italic = true })
vim.api.nvim_set_hl(0, "@keyword.function", { fg = colors.GruvboxOrange })
vim.api.nvim_set_hl(0, "@keyword.operator", { fg = colors.GruvboxOrange })
vim.api.nvim_set_hl(0, "@keyword.import", { fg = colors.GruvboxAqua })
vim.api.nvim_set_hl(0, "@keyword.type", { fg = colors.GruvboxOrange, italic = true })
vim.api.nvim_set_hl(0, "@keyword.modifier", { fg = colors.GruvboxOrange, italic = true })
vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = colors.GruvboxOrange, italic = true })
vim.api.nvim_set_hl(0, "@keyword.debug", { fg = colors.reef })
vim.api.nvim_set_hl(0, "@keyword.exception", { fg = colors.GruvboxOrange, italic = true })

vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = colors.GruvboxRed, italic = true })
vim.api.nvim_set_hl(0, "@keyword.conditional.ternary", { fg = colors.GruvboxRed, italic = true })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = colors.GruvboxRed, italic = true })

vim.api.nvim_set_hl(0, "@conditional", { fg = colors.GruvboxOrange })
vim.api.nvim_set_hl(0, "@repeat", { fg = colors.GruvboxOrange })
vim.api.nvim_set_hl(0, "@label", { fg = colors.GruvboxOrange })
vim.api.nvim_set_hl(0, "@operator", { fg = colors.GruvboxFg1 })
vim.api.nvim_set_hl(0, "@exception", { fg = colors.GruvboxOrange })

vim.api.nvim_set_hl(0, "@type.definition", { fg = colors.GruvboxFg1 })
vim.api.nvim_set_hl(0, "@type", { fg = colors.GruvboxYellow })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.GruvboxYellow })

vim.api.nvim_set_hl(0, "@storageclass", { fg = colors.GruvboxOrange })
vim.api.nvim_set_hl(0, "@prepoc", { fg = colors.flax })

vim.api.nvim_set_hl(0, "@text", { fg = colors.GruvboxFg2 })

vim.api.nvim_set_hl(0, "@field", { fg = colors.GruvboxOrange })
vim.api.nvim_set_hl(0, "@property", { fg = colors.GruvboxFg1 })
vim.api.nvim_set_hl(0, "@punctuation", { fg = colors.GruvboxFg1 })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = colors.GruvboxFg1 })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = colors.GruvboxFg1 })

vim.api.nvim_set_hl(0, "Special", { fg = colors.GruvboxOrange })
vim.api.nvim_set_hl(0, "String", { fg = colors.GruvboxGreen })
vim.api.nvim_set_hl(0, "Directory", { fg = colors.jordy })

-- Set the color for function icons
vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = colors.jordy }) -- Change to your desired color
vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = colors.GruvboxPurple }) -- Change to your desired color
vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = colors.flax }) -- Change to your desired color
vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = colors.jordy }) -- Change to your desired color
vim.api.nvim_set_hl(0, "CmpBorder", { fg = colors.jordy }) -- Change to your desired color

vim.api.nvim_set_hl(0, "WhichNormal", { bg = "none" })
