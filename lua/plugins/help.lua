return {
    {
        "FeiyouG/commander.nvim",
        dependencies = { "nvim-telescope/telescope.nvim" },
        keys = {
            { "<leader>fc", "<CMD>Telescope commander<CR>", mode = "n" },
        },
        opts = {
            components = {
                "DESC",
                "KEYS",
                "CAT",
            },
            sort_by = {
                "DESC",
                "KEYS",
                "CAT",
                "CMD"
            },
            integration = {
                telescope = {
                    enable = true,
                },
                lazy = {
                    enable = true,
                    set_plugin_name_as_cat = true
                }
            }
        },
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        keys = {
            {
                "<leader>?",
                function() require("which-key").show({ global = false }) end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
        enabled = false,
    },
    {
        "roobert/surround-ui.nvim",
        dependencies = {
            "kylechui/nvim-surround",
            "folke/which-key.nvim",
        },
        opts = {
            root_key = "S",
        },
        enabled = false,
    },
}
