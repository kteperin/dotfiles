require("conform").setup({
    formatters_by_ft = {
        javascript = { "prettier" },
        html = { "prettier" },
        css = { "prettier" }
    },
    format_on_save = {
        lsp_fallback = true
    }
})
