local complete = require("cmp")
local luasnip = require("luasnip")

complete.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    mapping = {
        ["<Tab>"] = complete.mapping(function(fallback)
            if complete.visible() then
                complete.select_next_item()
            else
                fallback()
            end
        end),
        ["<S-Tab>"] = complete.mapping(function(fallback)
            if complete.visible() then
                complete.select_prev_item()
            else
                fallback()
            end
        end),
        ["<Enter>"] = complete.mapping.confirm({ select = true })
    },
    sources = complete.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" }
    }, {
        { name = "buffer" }
    })
})

complete.setup.filetype("gitcommit", {
    sources = complete.config.sources({
        { name = "git" }
    }, {
        { name = "buffer" }
    })
})

complete.setup.cmdline(":", {
    mapping = complete.mapping.preset.cmdline(),
    sources = complete.config.sources({
        { name = "path" }
    }, {
        { name = "cmdline" }
    })
})

require("cmp_git").setup({
    filetypes = { "gitcommit" },
    remotes = { "upstream", "origin" }
})
