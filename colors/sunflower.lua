local colors = {
	bg0 = "#101010",
	fg0 = "#ebe5dd",
	fg1 = "#cdddde",
	fg2 = "#617885",
	bright_red = "#e88c8c",
	bright_blue = "#96e8f4",
	bright_purple = "#e084de",
	bright_yellow = "#e9e092",
	bright_orange = "#e8b58c",
	dark_blue = "#81aaff",
}
vim.g.colors_name = "sunflower"

-- UI Highlight Groups
vim.api.nvim_set_hl(0, "Visual", { bg = colors.fg2, fg = colors.fg0 })
vim.api.nvim_set_hl(0, "Search", { bg = colors.bright_yellow, fg = colors.bg0 })

vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.bright_yellow })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.fg2 })

-- Menu Highlight Groups
vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.fg2 })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.fg1 })

-- Syntaxt Highlight Groups
vim.api.nvim_set_hl(0, "@comment", { fg = colors.fg2, italic = true })

vim.api.nvim_set_hl(0, "@constant", { fg = colors.fg1 })
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = colors.fg1 })
vim.api.nvim_set_hl(0, "@constant.macro", { fg = colors.fg1 })

vim.api.nvim_set_hl(0, "@variable", { fg = colors.fg1 })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.bright_red })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = colors.fg1 })
vim.api.nvim_set_hl(0, "@variable.member", { fg = colors.fg1 })

vim.api.nvim_set_hl(0, "@string", { fg = colors.bright_orange })
vim.api.nvim_set_hl(0, "@string.documentation", { fg = colors.bright_orange })
vim.api.nvim_set_hl(0, "@string.regexp", { fg = colors.bright_orange })
vim.api.nvim_set_hl(0, "@string.escape", { fg = colors.bright_orange })
vim.api.nvim_set_hl(0, "@string.special", { fg = colors.bright_orange })
vim.api.nvim_set_hl(0, "@string.special.symbol", { fg = colors.bright_orange })
vim.api.nvim_set_hl(0, "@string.special.path", { fg = colors.bright_orange })

vim.api.nvim_set_hl(0, "@character", { fg = colors.bright_orange })
vim.api.nvim_set_hl(0, "@character.special", { fg = colors.fg1 })

vim.api.nvim_set_hl(0, "@number", { fg = colors.bright_red })
vim.api.nvim_set_hl(0, "@boolean", { fg = colors.bright_red })
vim.api.nvim_set_hl(0, "@number.float", { fg = colors.bright_red })

vim.api.nvim_set_hl(0, "@variable", { fg = colors.fg1 })

vim.api.nvim_set_hl(0, "@function", { fg = colors.dark_blue })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.dark_blue })
vim.api.nvim_set_hl(0, "@function.call", { fg = colors.dark_blue })
vim.api.nvim_set_hl(0, "@function.macro", { fg = colors.dark_blue })

vim.api.nvim_set_hl(0, "@attribute", { fg = colors.bright_blue })
vim.api.nvim_set_hl(0, "@attribute.builtin", { fg = colors.bright_blue })

vim.api.nvim_set_hl(0, "@parameter", { fg = colors.fg1 })

vim.api.nvim_set_hl(0, "@keyword", { fg = colors.bright_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.coroutine", { fg = colors.bright_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.function", { fg = colors.bright_blue })
vim.api.nvim_set_hl(0, "@keyword.operator", { fg = colors.bright_blue })
vim.api.nvim_set_hl(0, "@keyword.import", { fg = colors.bright_blue })
vim.api.nvim_set_hl(0, "@keyword.type", { fg = colors.bright_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.modifier", { fg = colors.bright_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = colors.bright_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.debug", { fg = colors.bright_red })
vim.api.nvim_set_hl(0, "@keyword.exception", { fg = colors.bright_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = colors.bright_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.conditional.ternary", { fg = colors.bright_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = colors.bright_blue, italic = true })

vim.api.nvim_set_hl(0, "@conditional", { fg = colors.bright_blue })
vim.api.nvim_set_hl(0, "@repeat", { fg = colors.bright_blue })
vim.api.nvim_set_hl(0, "@label", { fg = colors.bright_blue })
vim.api.nvim_set_hl(0, "@operator", { fg = colors.dark_blue })
vim.api.nvim_set_hl(0, "@exception", { fg = colors.bright_blue })

vim.api.nvim_set_hl(0, "@type", { fg = colors.bright_yellow })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.bright_yellow })
vim.api.nvim_set_hl(0, "@type.definition", { fg = colors.bright_yellow })

vim.api.nvim_set_hl(0, "@storageclass", { fg = colors.bright_blue })
vim.api.nvim_set_hl(0, "@prepoc", { fg = colors.bright_yellow })

vim.api.nvim_set_hl(0, "@text", { fg = colors.fg2 })

vim.api.nvim_set_hl(0, "@field", { fg = colors.bright_blue })
vim.api.nvim_set_hl(0, "@property", { fg = colors.bright_blue })
vim.api.nvim_set_hl(0, "@punctuation", { fg = colors.fg1 })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = colors.fg1 })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = colors.bright_purple })

vim.api.nvim_set_hl(0, "Special", { fg = colors.bright_yellow })
vim.api.nvim_set_hl(0, "String", { fg = colors.bright_orange })
vim.api.nvim_set_hl(0, "Directory", { fg = colors.dark_blue })

-- Set the color for function icons
vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = colors.dark_blue }) -- Change to your desired color
vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = colors.fg1 }) -- Change to your desired color
vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = colors.bright_yellow }) -- Change to your desired color
vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = colors.dark_blue }) -- Change to your desired color
vim.api.nvim_set_hl(0, "CmpBorder", { fg = colors.dark_blue }) -- Change to your desired color

vim.api.nvim_set_hl(0, "WhichNormal", { bg = "none" })
