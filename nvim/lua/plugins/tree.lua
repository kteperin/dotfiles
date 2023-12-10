require("nvim-tree").setup({
    view = {
        width = 40,
        number = true,
        relativenumber = true
    },
    actions = {
        open_file = {
            quit_on_open = true
        }
    },
    renderer = {
        special_files = {},
        indent_markers = {
            enable = true,
            inline_arrows = true
        },
        group_empty = true,
        symlink_destination = false,
        icons = {
            git_placement = "after",
            glyphs = {
                default = "*",
                folder = {
                    empty = "",
                    empty_open = ""
                },
                git = {
                    unstaged = "m",
                    staged = "",
                    unmerged = "",
                    renamed = "m",
                    untracked = "u",
                    deleted = "d",
                    ignored = ""
                }
            }
        }
    }
})
