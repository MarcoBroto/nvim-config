local hyperThemeConfig = {
    theme = 'hyper',
    config = {
        week_header = {
            enable = true,
        },
        shortcut = {
            {
                icon = ' ',
                icon_hl = '@variable',
                desc = 'Files',
                group = 'Label',
                action = 'Telescope find_files',
                key = 'f',
            },
            {
                --icon = ' ',
                icon_hl = '@variable',
                desc = 'Explore',
                group = 'Label',
                action = 'Explore',
                key = 'e',
            },
            {
                desc = 'Keymaps',
                group = 'Number',
                action = 'Telescope keymaps',
                key = 'K',
            },
            {
                --icon=,
                --icon_hl=
                desc = '󰊳 Update',
                group = '@property',
                action = 'Lazy update',
                key = 'u',
            },
            {
                --icon=,
                --icon_hl=,
                desc = 'Health',
                group = 'Number',
                action = 'checkhealth',
                key = 'H',
            },
            --{
            --    desc = ' Apps',
            --    group = 'DiagnosticHint',
            --    action = 'Telescope app',
            --    key = 'a',
            --},
            --{
            --    desc = ' dotfiles',
            --    group = 'Number',
            --    action = 'Telescope dotfiles',
            --    key = 'd',
            --},
            --{
            --    desc = 'Buffers',
            --    group = 'Number',
            --    action = 'Telescope buffers',
            --    key = 'b',
            --},
        },
        footer = {'ESKETIIIIT!!!!'},
    },
}

local doomThemeConfig = {
    theme = 'doom',
    config = {
        header = {},
        center = {
            {
                icon = ' ',
                icon_hl = 'Title',
                desc = 'Find File',
                desc_hl = 'String',
                key = 'b',
                keymap = 'SPC f f',
                key_hl = 'Number',
                key_format = ' %s', -- remove default surrounding `[]`
                action = 'lua print(2)'
            },
            {
                icon = ' ',
                desc = 'Find Dotfiles',
                key = 'f',
                keymap = 'SPC f d',
                key_format = ' %s', -- remove default surrounding `[]`
                action = 'lua print(3)'
            },
        },
        footer = {},
    }
}

DASHBOARD_CONFIG = hyperThemeConfig 

return {
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        },
        opts = {
            lsp = {
                -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
                },
            },
            -- you can enable a preset for easier configuration
            presets = {
                bottom_search = true, -- use a classic bottom cmdline for search
                command_palette = true, -- position the cmdline and popupmenu together
                long_message_to_split = true, -- long messages will be sent to a split
                inc_rename = false, -- enables an input dialog for inc-rename.nvim
                lsp_doc_border = false, -- add a border to hover docs and signature help
            },
            messages = {
                enabled = false,
            },
            popupmenu = {
                enabled = false,
            },
            notify = {},
            commands = {},
        }
    },
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        dependencies = { {'nvim-tree/nvim-web-devicons'}},
        opts = DASHBOARD_CONFIG,
    },
    {
        'petertriho/nvim-scrollbar',
        opts = {},
    },
    {
        "folke/zen-mode.nvim",
        enabled = false,
    },
    {
        "folke/twilight.nvim",
        opts = {},
        keys = {
            {'<leader>twi', '<CMD>Twilight<CR>', mode = 'n', desc = 'Toggle Twilight dimming'},
        },
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {},
    },
}
