return {
    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.8', -- or, branch = '0.1.x',
        dependencies = { {'nvim-lua/plenary.nvim'} },
        config = function ()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find all files' })
            vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope find git files' })
            vim.keymap.set('n', '<leader>ps', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") });
            end)
        end,
    },
    {
        'theprimeagen/harpoon',
        config = function ()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")
            -- Add menu/add buffer keymaps
            vim.keymap.set("n", "<leader>a", mark.add_file)
            vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
            -- Add buffer keymaps
            vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
            vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
            vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
            vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
        end
    },
    {
        'mbbill/undotree',
        keys = {
            {'<leader>u', vim.cmd.UndotreeToggle, mode = 'n', desc = "Show undo tree buffer"},
        },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false, -- neo-tree will lazily load itself
        keys = {
            {'<leader>et', vim.cmd.Neotree, mode = 'n', desc = 'Open neo tree explorer'},
        },
        opts = {
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_hidden = false,
                },
            },
        },
    },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        opts = {}, ---@type Flash.Config
        -- stylua: ignore
        keys = {
            { mode = { "n", "x", "o" }, '<leader>s', function() require("flash").jump() end, desc = "Flash" },
            { "<leader>S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
    },
    {
        'mluders/comfy-line-numbers.nvim',
        opts = {
            labels = {
                '1', '2', '3', '4', '5', '11', '12', '13', '14', '15', '21', '22', '23',
                '24', '25', '31', '32', '33', '34', '35', '41', '42', '43', '44', '45',
                '51', '52', '53', '54', '55', '111', '112', '113', '114', '115', '121',
                '122', '123', '124', '125', '131', '132', '133', '134', '135', '141',
                '142', '143', '144', '145', '151', '152', '153', '154', '155', '211',
                '212', '213', '214', '215', '221', '222', '223', '224', '225', '231',
                '232', '233', '234', '235', '241', '242', '243', '244', '245', '251',
                '252', '253', '254', '255',
            },
            --up_key = 'k',
            --down_key = 'j',
            -- Line numbers will be completely hidden for the following file/buffer types
            hidden_file_types = { 'undotree' },
            hidden_buffer_types = { 'terminal', 'nofile' }
        },
        enabled = false,
    },
}
