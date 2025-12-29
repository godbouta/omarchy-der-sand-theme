return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#121212", -- Default background
                base01 = "#9e9e9e", -- Lighter background (status bars)
                base02 = "#121212", -- Selection background
                base03 = "#9e9e9e", -- Comments, invisibles
                base04 = "#ffffff", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#ffffff", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#db7b4d", -- Variables, errors, red
                base09 = "#eeb295", -- Integers, constants, orange
                base0A = "#e8a472", -- Classes, types, yellow
                base0B = "#98c7cd", -- Strings, green
                base0C = "#98b5cd", -- Support, regex, cyan
                base0D = "#879ecf", -- Functions, keywords, blue
                base0E = "#cd989e", -- Keywords, storage, magenta
                base0F = "#f2b78c", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
