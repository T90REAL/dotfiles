return {
    "L3MON4D3/LuaSnip",
    tag = "v1.*",
    config = function()
        require("luasnip").setup({
            enable_autosnippets = true,
        })
        require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/snippets"})
    end
  }
