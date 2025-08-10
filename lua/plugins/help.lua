return {
    {
        "FeiyouG/commander.nvim",
        dependencies = { "nvim-telescope/telescope.nvim" },
        keys = {
            { "<leader>fc", "<CMD>Telescope commander<CR>", mode = "n" },
        },
        config = function ()
            require("commander").setup({
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
            })
        end,
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
        config = function() require("surround-ui").setup({ root_key = "S" }) end,
        enabled = false,
    },
}
