return {
	{
		"hrsh7th/nvim-cmp",
		lazy = false,
		priority = 100,
		dependencies = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",

			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			local cmp_kinds = {
				Text = "",
				Method = "",
				Function = "",
				Constructor = "",
				Field = "",
				Variable = "",
				Class = "",
				Interface = "",
				Module = "",
				Property = "",
				Unit = "",
				Value = "",
				Enum = "",
				Keyword = "",
				Snippet = "",
				Color = "",
				File = "",
				Reference = "",
				Folder = "",
				EnumMember = "",
				Constant = "",
				Struct = "",
				Event = "",
				Operator = "",
				TypeParameter = "",
			}

			local cmp = require("cmp")
			local luasnip = require("luasnip")
			luasnip.config.setup({})

			local WINDOW_WIDTH = 50
			local MAX_LABEL_WIDTH = 20
			local ELLIPLIL_CHAR = "…"
			local EMPTY = ""

			cmp.setup({

				preselect = cmp.PreselectMode.Item,

				experimental = {
					ghost_text = true,
				},

				window = {
					completion = cmp.config.window.bordered({
						winhighlight = "Normal:Pmenu,FloatBorder:white,CursorLine:PmenuSel,Search:None",
						scrollbar = true,
					}),
					documentation = cmp.config.window.bordered({
						winhighlight = "Normal:Pmenu,FloatBorder:white,CursorLine:PmenuSel,Search:None",
					}),
				},

				completion = {
					completeopt = "menu,menuone,noinsert", -- Example configuration
				},

				formatting = {
					expandable_indicator = true,
					fields = { "kind", "abbr", "menu" },
					format = function(entry, vim_item)
						local content = vim_item.abbr
						if #content > MAX_LABEL_WIDTH then
							vim_item.abbr = vim.fn.strcharpart(content, 0, MAX_LABEL_WIDTH) .. ELLIPLIL_CHAR
						end

						-- kind icons
						vim_item.kind = cmp_kinds[vim_item.kind] or ""

						-- show source/package in menu
						local menu = ""
						if entry.source.name == "nvim_lsp" and entry.completion_item.detail then
							menu = entry.completion_item.detail
						elseif
							entry.source.name == "nvim_lsp"
							and entry.completion_item.data
							and entry.completion_item.data.containerName
						then
							menu = entry.completion_item.data.containerName
						else
							menu = ({
								buffer = "[BUF]",
								path = "[PATH]",
								luasnip = "[SNIP]",
								nvim_lua = "[LUA]",
								cmdline = "[CMD]",
							})[entry.source.name] or ("[" .. entry.source.name .. "]")
						end

						-- pad menu so it sticks to the right
						local padding = WINDOW_WIDTH - #menu
						if padding > 0 then
							vim_item.menu = string.rep(" ", padding) .. menu
						else
							vim_item.menu = vim.fn.strcharpart(menu, 0, WINDOW_WIDTH - 1) .. ELLIPLIL_CHAR
						end

						return vim_item
					end,
				},

				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},

				view = {
					docs = { auto_open = false },
				},

				sorting = {
					priority_weight = 2,
					comparators = {
						-- Below is the default comparitor list and order for nvim-cmp
						cmp.config.compare.offset,
						-- cmp.config.compare.scopes, --this is commented in nvim-cmp too
						cmp.config.compare.exact,
						cmp.config.compare.score,
						cmp.config.compare.recently_used,
						cmp.config.compare.locality,
						cmp.config.compare.sort_text,
						cmp.config.compare.length,
						cmp.config.compare.order,
					},
				},

				mapping = cmp.mapping.preset.insert({
					["<C-d>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping.select_next_item(),
					["<S-Tab>"] = cmp.mapping.select_prev_item(),
					["<C-Space>"] = cmp.mapping.complete({}),
					["<C-l>"] = cmp.mapping(function()
						if luasnip.expand_or_locally_jumpable() then
							luasnip.expand_or_jump()
						end
					end, { "i", "s" }),
					["<C-h>"] = cmp.mapping(function()
						if luasnip.locally_jumpable(-1) then
							luasnip.jump(-1)
						end
					end, { "i", "s" }),

					-- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
					--    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
				}),
				sources = {
					{ name = "lazydev", group_index = 0 },
					{ name = "nvim_lsp", group_index = 1 },
					{ name = "luasnip", group_index = 2 },
					{ name = "buffer", group_index = 3 },
					{ name = "path", group_index = 4 },
				},

				performance = {
					max_view_entries = 20,
				},
			})
		end,
	},
}
