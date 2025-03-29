---@class Artic
---@field config ArticConfig
local Artic = {}

---@class ArticConfig
Artic.config = {}

local function get_groups()
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

	local groups = {
		ArticFg0 = { fg = colors.fg0 },
		ArticFg1 = { fg = colors.fg1 },
		ArticFg2 = { fg = colors.fg2 },
		ArticBg0 = { fg = colors.bg0 },
		ArticRed = { fg = colors.bright_red },
		ArticYellow = { fg = colors.bright_yellow },
		ArticBlue = { fg = colors.dark_blue },
		ArticPurple = { fg = colors.bright_purple },
		ArticAqua = { fg = colors.bright_blue },
		ArticOrange = { fg = colors.bright_orange },

		Pmenu = { fg = colors.fg2 },
		PmenuSel = { fg = colors.fg1 },
		Normal = { fg = colors.fg1, bg = nil },
		NormalFloat = { fg = colors.fg1, bg = nil },
		Visual = { fg = colors.bg0, bg = colors.bright_yellow },
		Search = { fg = colors.bright_yellow, bg = colors.bg0 },
		Cursor = { reverse = true },
		CursorLine = { bg = colors.fg1 },
		ColorColumn = { bg = colors.fg1 },
		CursorLineNr = { fg = colors.bright_yellow, bg = nil },
		LineNr = { fg = colors.fg2 },
		SignColumn = { bg = nil },
		WinSeparator = { fg = colors.bg0, bg = nil },

		-- Unknown Colors

		Comment = { fg = colors.fg2, italic = true },
		Keyword = { fg = colors.bright_red, italic = true },
		Statement = { fg = colors.bright_blue, italic = true },
		Conditional = { fg = colors.bright_blue, italic = true },
		Repeat = { fg = colors.bright_blue, italic = true },
		Exception = { link = "ArticBlue" },
		PreCondit = { link = "ArticBlue" },
		Label = { link = "ArticBlue" },
		Macro = { link = "ArticFg1" },
		StorageClass = { link = "ArticAqua" },
		PreProc = { link = "ArticYellow" },
		Special = { link = "ArticRed" },
		Include = { link = "ArticBlue" },
		Directory = { link = "ArticBlue" },
		Define = { link = "ArticBlue" },
		Structure = { link = "ArticAqua" },
		Type = { link = "ArticYellow" },
		Typedef = { link = "ArticAqua" },
		Operator = { link = "ArticBlue" },
		Character = { link = "ArticRed" },
		Identifier = { link = "ArticFg1" },
		Function = { link = "ArticBlue" },
		String = { link = "ArticOrange" },
		Constant = { link = "ArticFg1" },
		Boolean = { link = "ArticRed" },
		Number = { link = "ArticRed" },
		Float = { link = "ArticRed" },

		CmpItemKindFunction = { fg = colors.dark_blue },
		CmpItemKindVariable = { fg = colors.fg1 },
		CmpItemKindClass = { fg = colors.bright_yellow },
		CmpItemKindMethod = { fg = colors.dark_blue },
		CmpBorder = { fg = colors.dark_blue },
		WhichNormal = { bg = nil },

		["@comment"] = { fg = colors.fg2, italic = true },
		["@constant"] = { fg = colors.fg1 },
		["@constant.builtin"] = { fg = colors.fg1 },
		["@constant.macro"] = { fg = colors.fg1 },
		["@variable.builtin"] = { fg = colors.bright_red },
		["@variable.parameter"] = { fg = colors.fg1 },
		["@variable.member"] = { fg = colors.fg1 },
		["@string"] = { fg = colors.bright_orange },
		["@string.documentation"] = { fg = colors.bright_orange },
		["@string.regexp"] = { fg = colors.bright_orange },
		["@string.escape"] = { fg = colors.bright_orange },
		["@string.special"] = { fg = colors.bright_orange },
		["@string.special.symbol"] = { fg = colors.bright_orange },
		["@string.special.path"] = { fg = colors.bright_orange },
		["@character"] = { fg = colors.bright_orange },
		["@character.special"] = { fg = colors.fg1 },
		["@number"] = { fg = colors.bright_red },
		["@boolean"] = { fg = colors.bright_red },
		["@number.float"] = { fg = colors.bright_red },
		["@variable"] = { fg = colors.fg1 },
		["@function"] = { fg = colors.dark_blue },
		["@function.builtin"] = { fg = colors.dark_blue },
		["@function.call"] = { fg = colors.dark_blue },
		["@function.macro"] = { fg = colors.dark_blue },
		["@attribute"] = { fg = colors.bright_blue },
		["@attribute.builtin"] = { fg = colors.bright_blue },
		["@parameter"] = { fg = colors.fg1 },
		["@keyword"] = { fg = colors.bright_blue, italic = true },
		["@keyword.coroutine"] = { fg = colors.bright_blue, italic = true },
		["@keyword.function"] = { fg = colors.bright_blue },
		["@keyword.operator"] = { fg = colors.bright_blue },
		["@keyword.import"] = { fg = colors.bright_blue },
		["@keyword.type"] = { fg = colors.bright_blue, italic = true },
		["@keyword.modifier"] = { fg = colors.bright_blue, italic = true },
		["@keyword.repeat"] = { fg = colors.bright_blue, italic = true },
		["@keyword.debug"] = { fg = colors.bright_red },
		["@keyword.exception"] = { fg = colors.bright_blue, italic = true },
		["@keyword.conditional"] = { fg = colors.bright_blue, italic = true },
		["@keyword.conditional.ternary"] = { fg = colors.bright_blue, italic = true },
		["@keyword.return"] = { fg = colors.bright_blue, italic = true },
		["@conditional"] = { fg = colors.bright_blue },
		["@repeat"] = { fg = colors.bright_blue },
		["@label"] = { fg = colors.bright_blue },
		["@operator"] = { fg = colors.dark_blue },
		["@exception"] = { fg = colors.bright_blue },
		["@type"] = { fg = colors.bright_yellow },
		["@type.builtin"] = { fg = colors.bright_yellow },
		["@type.definition"] = { fg = colors.bright_yellow },
		["@storageclass"] = { fg = colors.bright_blue },
		["@prepoc"] = { fg = colors.bright_yellow },
		["@text"] = { fg = colors.fg2 },
		["@field"] = { fg = colors.bright_blue },
		["@property"] = { fg = colors.bright_blue },
		["@punctuation"] = { fg = colors.fg1 },
		["@punctuation.delimiter"] = { fg = colors.fg1 },
		["@punctuation.bracket"] = { fg = colors.bright_purple },

		-- ["@none"] = { bg = "NONE", fg = "NONE" },
		-- ["@preproc"] = { link = "PreProc" },
		-- ["@define"] = { link = "Define" },
		-- ["@punctuation.special"] = { link = "Delimiter" },
		-- ["@string.regex"] = { link = "String" },
		-- ["@string.special.url"] = { link = "Underlined" },
		-- ["@float"] = { link = "Float" },
		-- ["@method"] = { link = "Function" },
		-- ["@method.call"] = { link = "Function" },
		-- ["@constructor"] = { link = "Special" },
		-- ["@keyword.directive"] = { link = "PreProc" },
		-- ["@keyword.directive.define"] = { link = "Define" },
		-- ["@keyword.storage"] = { link = "StorageClass" },
		-- ["@debug"] = { link = "Debug" },
		-- ["@include"] = { link = "Include" },
		-- ["@type.qualifier"] = { link = "Type" },
		-- ["@markup"] = { link = "ArticFg1" },
		-- ["@markup.italic"] = { link = "@text.emphasis" },
		-- ["@markup.heading"] = { link = "Title" },
		-- ["@markup.raw"] = { link = "String" },
		-- ["@markup.math"] = { link = "Special" },
		-- ["@markup.environment"] = { link = "Macro" },
		-- ["@markup.environment.name"] = { link = "Type" },
		-- ["@markup.link"] = { link = "Underlined" },
		-- ["@markup.link.label"] = { link = "SpecialChar" },
		-- ["@markup.list"] = { link = "Delimiter" },
		-- ["@markup.list.checked"] = { link = "ArticGreen" },
		-- ["@markup.list.unchecked"] = { link = "ArticGray" },
		-- ["@comment.todo"] = { link = "Todo" },
		-- ["@comment.note"] = { link = "SpecialComment" },
		-- ["@comment.warning"] = { link = "WarningMsg" },
		-- ["@comment.error"] = { link = "ErrorMsg" },
		-- ["@diff.plus"] = { link = "diffAdded" },
		-- ["@diff.minus"] = { link = "diffRemoved" },
		-- ["@diff.delta"] = { link = "diffChanged" },
		-- ["@module"] = { link = "ArticFg1" },
		-- ["@namespace"] = { link = "ArticFg1" },
		-- ["@symbol"] = { link = "Identifier" },
		-- ["@text.title"] = { link = "Title" },
		-- ["@text.literal"] = { link = "String" },
		-- ["@text.uri"] = { link = "Underlined" },
		-- ["@text.math"] = { link = "Special" },
		-- ["@text.environment"] = { link = "Macro" },
		-- ["@text.environment.name"] = { link = "Type" },
		-- ["@text.reference"] = { link = "Constant" },
		-- ["@text.todo"] = { link = "Todo" },
		-- ["@text.todo.checked"] = { link = "ArticGreen" },
		-- ["@text.todo.unchecked"] = { link = "ArticGray" },
		-- ["@text.note"] = { link = "SpecialComment" },
		-- ["@text.warning"] = { link = "WarningMsg" },
		-- ["@text.danger"] = { link = "ErrorMsg" },
		-- ["@text.diff.add"] = { link = "diffAdded" },
		-- ["@text.diff.delete"] = { link = "diffRemoved" },
		-- ["@tag"] = { link = "Tag" },
		-- ["@tag.attribute"] = { link = "Identifier" },
		-- ["@tag.delimiter"] = { link = "Delimiter" },
		-- ["@macro"] = { link = "Macro" },
		-- ["@structure"] = { link = "Structure" },
		-- ["@lsp.type.class"] = { link = "@type" },
		-- ["@lsp.type.comment"] = { link = "@comment" },
		-- ["@lsp.type.decorator"] = { link = "@macro" },
		-- ["@lsp.type.enum"] = { link = "@type" },
		-- ["@lsp.type.enumMember"] = { link = "@constant" },
		-- ["@lsp.type.function"] = { link = "@function" },
		-- ["@lsp.type.interface"] = { link = "@constructor" },
		-- ["@lsp.type.macro"] = { link = "@macro" },
		-- ["@lsp.type.method"] = { link = "@method" },
		-- ["@lsp.type.modifier.java"] = { link = "@keyword.type.java" },
		-- ["@lsp.type.namespace"] = { link = "@namespace" },
		-- ["@lsp.type.parameter"] = { link = "@parameter" },
		-- ["@lsp.type.property"] = { link = "@property" },
		-- ["@lsp.type.struct"] = { link = "@type" },
		-- ["@lsp.type.type"] = { link = "@type" },
		-- ["@lsp.type.typeParameter"] = { link = "@type.definition" },
		-- ["@lsp.type.variable"] = { link = "@variable" },
	}

	return groups
end

---@param config ArticConfig?
Artic.setup = function(config)
	Artic.config = vim.tbl_deep_extend("force", Artic.config, config or {})
end

--- main load function
Artic.load = function()
	if vim.version().minor < 8 then
		vim.notify_once("artic.nvim: you must use neovim 0.8 or higher")
		return
	end

	-- reset colors
	if vim.g.colors_name then
		vim.cmd.hi("clear")
	end
	vim.g.colors_name = "artic"
	vim.o.termguicolors = true

	local groups = get_groups()

	-- add highlights
	for group, settings in pairs(groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

return Artic
