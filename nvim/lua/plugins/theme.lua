require("catppuccin").setup({
    color_overrides = {
        mocha = {
            base = "#11111B",
            text = "#FFFFFF",
            mantle = "#11111B",
            theme = {
                plugins = {
                    NvimTreeNormal = { fg = nil, bg = nil }
                }
            }
        }
    }
})

vim.cmd.colorscheme "catppuccin-mocha"
