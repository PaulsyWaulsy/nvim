vim.pack.add({ "https://github.com/hrsh7th/nvim-cmp" })
vim.pack.add({ "https://github.com/hrsh7th/cmp-nvim-lsp" })
vim.pack.add({ "https://github.com/hrsh7th/cmp-buffer" })
vim.pack.add({ "https://github.com/hrsh7th/cmp-path" })
vim.pack.add({ "https://github.com/onsails/lspkind.nvim" })

local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
	snippet = {
		expand = function(args)
			vim.snippet.expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered({ border = "single", col_offset = 0, max_width = 40, max_height = 10 }),
		documentation = cmp.config.window.bordered({ border = "single", max_width = 60, max_height = 15 }),
	},
	experimental = { ghost_text = true },
	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol_text", -- icon + kind label
			maxwidth = 50,
			ellipsis_char = "…",
			show_labelDetails = true,
			before = function(entry, item)
				-- show source name on the right like VSCode
				item.menu = ({
					nvim_lsp = "[LSP]",
					buffer = "[Buf]",
					path = "[Path]",
				})[entry.source.name]
				return item
			end,
		}),
	},
	mapping = cmp.mapping.preset.insert({
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-l>"] = cmp.mapping(function()
			if vim.snippet.active({ direction = 1 }) then
				vim.snippet.jump(1)
			end
		end, { "i", "s" }),
		["<C-h>"] = cmp.mapping(function()
			if vim.snippet.active({ direction = -1 }) then
				vim.snippet.jump(-1)
			end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
	}),
})
