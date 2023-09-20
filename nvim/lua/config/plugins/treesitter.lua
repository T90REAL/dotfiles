return {
	"nvim-treesitter/playground",
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		priority = 1000,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				-- ensure_installed = { "cpp", "python", "java", "c", "bash", "go", "lua", "html", "vim" },
				highlight = {
					enable = true,
					disable = {}, -- list of language that will be disabled
				},
				indent = { enable = true },
			})
		end
	},
}
