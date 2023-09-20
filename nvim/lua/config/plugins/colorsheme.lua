return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        -- config = function()
        --     vim.cmd([[colorscheme tokyonight-storm]])
        -- end
    },
    {
            "neanias/everforest-nvim",
            version = false,
            lazy = false,
            priority = 1000,
            config = function()
                require("everforest").setup({
                    background = "medium",
                    ui_contrast = "high",
                    disable_italic_comments = true,
                    -- vim.cmd([[colorscheme everforest]]),
                })
            end,

    },
    {
        'kaiuri/nvim-juliana',
        -- config = function()
            -- vim.cmd('colorscheme juliana')
        -- end
    },
    {
        "ellisonleao/gruvbox.nvim",
        config = function()
            -- vim.cmd('colorscheme gruvbox')
            vim.o.background = "dark"
        end
    },
    {
        "theniceboy/nvim-deus",
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.cmd('colorscheme gruvbox')
            -- vim.cmd([[colorscheme deus]])
            -- vim.g.deus_termcolors=256
            -- vim.o.background = "dark"
        end,
    },
    {
    },
    -- rose-pine-dawn
    {
        'rose-pine/neovim', 
        name = 'rose-pine',
        config = function()
            require('rose-pine').setup({
                --- @usage 'auto'|'main'|'moon'|'dawn'
                variant = 'dawn',
                --- @usage 'main'|'moon'|'dawn'
                dark_variant = 'dawn',
                bold_vert_split = false,
                dim_nc_background = false,
                disable_background = false,
                disable_float_background = false,
                disable_italics = true,

                --- @usage string hex value or named color from rosepinetheme.com/palette
                groups = {
                    background = 'base',
                    background_nc = '_experimental_nc',
                    panel = '#95A5A6',
                    panel_nc = '#FBFCFC',
                    border = 'highlight_med',
                    comment = '#BDC3C7',
                    link = 'iris',
                    punctuation = 'subtle',
                    error = 'love',
                    hint = 'iris',
                    info = 'foam',
                    warn = 'gold',

                    headings = {
                        h1 = 'iris',
                        h2 = 'foam',
                        h3 = 'rose',
                        h4 = 'gold',
                        h5 = 'pine',
                        h6 = 'foam',
                    },
                    -- or set all headings at once
                    -- headings = 'subtle'
                },

                -- Whether or not highlight_groups optios should change only only update
                -- the settings they touch or should reset the entire highlight_group.
                respect_default_highlight_groups = true,

                -- Change specific vim highlight groups
                -- https://github.com/rose-pine/neovim/wiki/Recipes
                highlight_groups = {
                    MatchParen = { bg = '#808B96' },
                    CursorLine = { bg = 'foam', blend = 10 },
                    StatusLine = { fg = 'love', bg = 'love', blend = 10 },
                    NonText = { fg = 'text' },
                    Keyword = { fg = 'text'},
                    -- Define = { fg = '#E74C3C' },
                    Macro = { fg = '#E74C3C' },
                    Conditional = { fg = 'text' },
                    PreCondit = { fg = '#E74C3C' },
                    Visual = {fg = '#FBFCFC', bg = 'grey40'},
                    Folded = { fg = 'text', bg = '#F6DDCC', bold = true, underline = true },
                    Normal = {fg = 'text'},
                    Label = {fg = 'text'},
                    Repeat = {fg = 'text'},
                    Tag = {fg = 'text'},
                    Identifier = {fg = 'text'},
                    Statement = {fg = 'text'},
                    Type = {fg = 'gold'},
                    StorageClass = {fg = 'text'},
                    Function = {fg = 'text'},
                    Structure = {fg = 'text'},
                    Boolean = {fg = 'text'},
                    Include = {fg = '#E74C3C'},
                    Special = {fg = 'text'},
                    SpecialChar = {fg = 'gold'},
                    Debug = {fg = 'text'},
                    ['@constant.builtin'] = { fg = 'text' },
                    ['@function.builtin'] = { fg = 'text' },
                    ['@method'] = { fg = 'text' },
                    ['@variable.builtin'] = { fg = 'text' },
                    -- ['@namespace'] = { link = '@include' },


                    ['CmpItemAbbr'] = { fg = '#ECF0F1' },
                    ['CmpItemAbbrDeprecated'] = { fg = 'subtle', strikethrough = true },
                    ['CmpItemAbbrMatch'] = { fg = 'text', bold = true },
                    ['CmpItemAbbrMatchFuzzy'] = { fg = 'text', bold = true },
                    ['CmpItemKind'] = { fg = 'subtle' },
                    ['CmpItemKindClass'] = { fg = 'pine' },
                    ['CmpItemKindFunction'] = { fg = 'rose' },
                    ['CmpItemKindInterface'] = { fg = 'foam' },
                    ['CmpItemKindMethod'] = { fg = 'iris' },
                    ['CmpItemKindSnippet'] = { fg = 'gold' },
                    ['CmpItemKindVariable'] = { fg = 'text' },

                    -- Tag = {fg = 'text'},
                    -- CursorColumn = { fg = 'text', bg = 'text' }
                }
            })

            -- Set colorscheme after options
            vim.cmd('colorscheme rose-pine')
            -- vim.cmd("autocmd VimEnter * highlight Visual cterm=NONE ctermbg=0 ctermfg=cyan guibg=Grey40")
        end
    },
    {
        'maxmx03/fluoromachine.nvim',
        -- config = function ()
        --     local fm = require 'fluoromachine'
        --
        --     fm.setup {
        --         glow = false,
        --         theme = 'delta'
        --     }
        --
        --     vim.opt.termguicolors = true
            -- vim.cmd.colorscheme 'fluoromachine'
        --end
    },
    {
        'shaunsingh/moonlight.nvim',

        config = function()
            vim.opt.termguicolors = true
            -- vim.cmd('colorscheme blue-moon')
        end 
    },
    {
        "kyazdani42/blue-moon"
    },
    {
        'Mofiqul/vscode.nvim',
        -- config = function()
        --     vim.cmd('colorscheme vscode')
        -- end
    },
}
