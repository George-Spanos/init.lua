return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"debugloop/telescope-undo.nvim",
	},
	config = function()
		local opts = {
			extensions = {
				undo = {
					mappings = {
						i = {
							["<s-cr>"] = require("telescope-undo.actions").yank_additions,
							["<c-cr>"] = require("telescope-undo.actions").yank_deletions,
							["<cr>"] = require("telescope-undo.actions").restore,
						},
					},
				},
			},
		}
		require("telescope").setup(opts)
		require("telescope").load_extension("undo")
		vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
	end,
}
