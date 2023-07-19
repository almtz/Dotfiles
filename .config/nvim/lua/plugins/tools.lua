return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {}
    },

    {
        "tpope/vim-fugitive"
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
