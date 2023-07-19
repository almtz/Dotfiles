return {
    -- Colorscheme
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        config = function()
            vim.cmd([[colorscheme catppuccin]])
        end
    },

    -- Statusline
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup {
                extensions = { "nvim-tree" }
            }
        end
    },

    -- File explorer
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            disable_netrw = true,
            hijack_netrw = true,

            renderer = {
                root_folder_label = false,
                indent_markers = { enable = true }
            },

            view = {
                side = "right",
            }
        }
    },

   -- gitsigns
    {
        "lewis6991/gitsigns.nvim",
        envent = "VeryLazy",
        opts = {}
    },

    -- Indent lines
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "BufRead",
        opts = {}
    }
}
