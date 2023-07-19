return {
    {
        "tpope/vim-fugitive"
    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {}
    },

    {
        "max397574/better-escape.nvim",
        event = "InsertEnter",
        opts = {}
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim"},
        opts = {
            defaults = {
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                layout_config = {
                    horizontal = {
                        prompt_position = "top"
                    }
                }
            }
        }
    },
}
