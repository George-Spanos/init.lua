return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.1",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>sf", "<cmd>Telescope find_files<cr>", mode = { "n" }, desc = "Search Files" },
		{ "<leader>sr", "<cmd>Telescope oldfiles<cr>", mode = { "n" }, desc = "Search Recent" },
		{ "<leader>st", "<cmd>Telescope live_grep<cr>", mode = { "n" }, desc = "Search Text" },
		{ "<leader>sb", "<cmd>Telescope buffers<cr>", mode = { "n" }, desc = "Search Buffers" },
		{ "<leader>sh", "<cmd>Telescope help_tags<cr>", mode = { "n" }, desc = "Search Help" },
	},
    config = {
        defaults = {
            path_display = {"smart"}
        }
    }
}
