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
        'ofirgall/ofirkai.nvim'
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
                    -- CursorLine = { bg = 'foam', blend = 10 },
                    -- CursorColumn = { fg = 'text', bg = 'text' },-- {{{}}}
                    LineNr = { bg = '#f2e9e1' },
                    StatusLine = { fg = 'love', bg = 'love', blend = 10 },
                    NonText = { fg = 'text' },
                    -- Define = { fg = '#E74C3C' },
                    -- Macro = { fg = '#E74C3C' },
                    Number = { fg = '#E74C3C', bold = false },
                    SpecialChar = {fg = '#E74C3C'},
                    Macro = { fg = 'gold' },
                    Keyword = { fg = 'text' },
                    Conditional = { fg = 'gold' },
                    PreCondit = { fg = '#E74C3C' },
                    Visual = { fg = '#FBFCFC', bg = 'grey40'},
                    -- VisualNOS = { bg = 'gold' },
                    -- Folded = { fg = 'text', bg = '#F6DDCC', bold = true, underline = true },
                    -- FoldColumn = { fg = 'gold' },
                    Folded = { fg = '#ECF0F1', bg = '#93a1a1', bold = true, underline = false },
                    Normal = {fg = 'text'},
                    Label = {fg = 'text'},
                    Repeat = {fg = 'gold'},
                    Tag = {fg = 'text'},
                    Identifier = {fg = 'text'},
                    Statement = {fg = 'text'},
                    Type = {fg = 'gold'},
                    StorageClass = {fg = 'text'},
                    Function = {fg = 'text'},
                    Structure = {fg = 'text'},
                    -- Structure = {fg = 'gold', bold=true},
                    -- Structure = {fg = 'gold'},
                    Boolean = {fg = 'text'},
                    Include = {fg = '#E74C3C'},
                    Special = {fg = 'text'},
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
                }
            })

            -- Set colorscheme after options
            -- vim.cmd('colorscheme rose-pine-dawn')
            vim.o.background = 'light' -- or 'light'
            vim.cmd('colorscheme solarized')
            -- vim.cmd('colorscheme slate')
            vim.cmd('set cursorline')
            vim.cmd('set cursorcolumn')
            -- vim.cmd('colorscheme distilled')
            -- vim.cmd('colorscheme deus')
            -- block cursor
            -- vim.cmd('set guicursor=n-v-c-i:block')
            -- vim.cmd("autocmd VimEnter * highlight Visual cterm=NONE ctermbg=0 ctermfg=cyan guibg=Grey40")
        end
    },
    {
        'danishprakash/vim-yami'
    },
    {
        'robertmeta/nofrils'
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
        "andreasvc/vim-256noir"
    },
    {
        'Yazeed1s/oh-lucy.nvim'
    },
    {
        'karoliskoncevicius/distilled-vim'
    },
    {
        'maxmx03/solarized.nvim',
        config = function()
            vim.o.background = 'light' -- or 'light'
        end,
    },
    {
        'Mofiqul/vscode.nvim',
        -- config = function()
        --     vim.cmd('colorscheme vscode')
        -- end
    },
}
