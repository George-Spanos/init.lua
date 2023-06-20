local M = {
	"jose-elias-alvarez/null-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "mason.nvim" },
	opts = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics
		local code_actions = null_ls.builtins.code_actions
		local completion = null_ls.builtins.completion
		return {
			sources = {
				formatting.stylua,
				formatting.prettierd,
				formatting.eslint_d,
                diagnostics.eslint_d,
                code_actions.eslint_d,
                -- golang
                formatting.goimports,
                formatting.gofumpt
			},
		}
	end,
}
return M
