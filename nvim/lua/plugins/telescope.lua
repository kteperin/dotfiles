local actions = require("telescope.actions")

require("telescope").setup({
    defaults = {
        mappings = {
            n = {
                ["<Tab>"] = actions.select_default,
                ["<S-Tab>"] = function() end,
            },
            i = {
                ["<Tab>"] = actions.select_default,
                ["<S-Tab>"] = function() end,
                ["<Esc>"] = actions.close
            }
        }
    }
})
