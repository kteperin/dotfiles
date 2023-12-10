require("packer").startup(function(use)
    use { "wbthomason/packer.nvim" }
    use { "m4xshen/autoclose.nvim" }
    use { "stevearc/conform.nvim" }
    use { "neovim/nvim-lspconfig" }
    use { "numToStr/Comment.nvim" }
    use { "nvim-lua/plenary.nvim" }
    use { "nvim-lualine/lualine.nvim" }
    use { "L3MON4D3/LuaSnip" }
    use { "hrsh7th/nvim-cmp", requires = {
        "hrsh7th/cmp-nvim-lsp",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "petertriho/cmp-git"
    } }
    use { "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons" } }
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "nvim-telescope/telescope.nvim" }
    use { "veevol/lumenvim" }
end)
