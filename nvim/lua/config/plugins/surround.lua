return {
    "kylechui/nvim-surround",
    event = "VeryLazy",
	version = "*",
    config = function()
        require("nvim-surround").setup({
            keymaps = {
                visual = "<leader>a",
                visual_line = "<leader>b",
                delete = "ds",
                change = "cs"
            }
            -- Configuration here, or leave empty to use defaults
        })
    end
}
