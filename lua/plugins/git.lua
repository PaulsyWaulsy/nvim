vim.pack.add({ "https://github.com/nvim-lua/plenary.nvim" })
vim.pack.add({ "https://github.com/kdheepak/lazygit.nvim" })
vim.pack.add({ "https://github.com/lewis6991/gitsigns.nvim" })

vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

require("gitsigns").setup({
	on_attach = function(bufnr)
		local gs = require("gitsigns")
		local map = function(keys, fn, desc)
			vim.keymap.set("n", keys, fn, { buffer = bufnr, desc = desc })
		end

		-- Navigation
		map("]h", gs.next_hunk, "Next Hunk")
		map("[h", gs.prev_hunk, "Prev Hunk")

		-- Actions
		map("<leader>hs", gs.stage_hunk, "Stage Hunk")
		map("<leader>hr", gs.reset_hunk, "Reset Hunk")
		map("<leader>hS", gs.stage_buffer, "Stage Buffer")
		map("<leader>hu", gs.undo_stage_hunk, "Undo Stage Hunk")
		map("<leader>hp", gs.preview_hunk, "Preview Hunk")
		map("<leader>hb", gs.blame_line, "Blame Line")
		map("<leader>hd", gs.diffthis, "Diff This")
	end,
})
