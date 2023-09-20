vim.diagnostic.config({
  virtual_text = false,
  signs = false,
  underline = true,
  update_in_insert = true,
  severity_sort = false,
})

return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",

        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            vim.lsp.set_log_level("off")
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "jdtls", "quick_lint_js", "pylsp", "bashls"},
                -- automatic_installation = true,
            })

            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require('lspconfig')

            -- local servers = { "lua_ls", "clangd", "jdtls", "quick_lint_js", "pylsp", "bashls"}
            local servers = { "lua_ls", "clangd", "jdtls", "quick_lint_js", "pyright", "bashls"}
            for _, lsp in ipairs(servers) do
                lspconfig[lsp].setup {
                    capabilities = capabilities,
                }
            end

            require("lspconfig").clangd.setup {
                capabilities = capabilities,
                cmd = {
                    "clangd",
                    "-header-insertion=never"
                }
            }

            -- require("lspconfig").pylsp.setup {
            --     capabilities = capabilities,
            --     settings = {
            --         pylsp = {
            --             plugins = {
            --                 pycodestyle = {
            --                     ignore = {"E302", "E265", "E226", "E305", "W291", "W391"},
            --                     maxLineLength = 300
            --                 },
            --                 jedi = {
            --                     environment = "/opt/homebrew/bin/python3",
            --                 },
            --                 jedi_completion = {
            --                     cache_for = {"pandas", "numpy", "tensorflow", "matplotlib", "PyQt6"},
            --                 },
            --                 flake8 = {
            --                     config = "/opt/homebrew/bin/python3",
            --                 }
            --             }
            --         }
            --     }
            -- }
        end
    },
    {
        "neovim/nvim-lspconfig",
    }
}
