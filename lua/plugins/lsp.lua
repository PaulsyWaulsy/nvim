vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })
vim.pack.add({ "https://github.com/mason-org/mason.nvim" })

require("mason").setup()

vim.diagnostic.config({
	virtual_text = { prefix = "●", source = "if_many" },
	signs = true,
	underline = true,
	update_in_insert = true,
	severity_sort = true,
})

-- Extend default capabilities with nvim-cmp completions
vim.lsp.config("*", {
	capabilities = vim.tbl_deep_extend(
		"force",
		vim.lsp.protocol.make_client_capabilities(),
		require("cmp_nvim_lsp").default_capabilities()
	),
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local map = function(keys, fn, desc)
			vim.keymap.set("n", keys, fn, { buffer = args.buf, desc = desc })
		end
		map("gd", vim.lsp.buf.definition, "Go to Definition")
		map("gD", vim.lsp.buf.declaration, "Go to Declaration")
		map("gr", vim.lsp.buf.references, "References")
		map("gi", vim.lsp.buf.implementation, "Go to Implementation")
		map("K", vim.lsp.buf.hover, "Hover Docs")
		map("<leader>rn", vim.lsp.buf.rename, "Rename")
		map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
		map("<leader>e", vim.diagnostic.open_float, "Show Diagnostics")
		map("[d", vim.diagnostic.goto_prev, "Prev Diagnostic")
		map("]d", vim.diagnostic.goto_next, "Next Diagnostic")
	end,
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("pyright")
vim.lsp.enable("texlab")
