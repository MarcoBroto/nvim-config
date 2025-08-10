vim.keymap.set("n", "<leader>gs", vim.cmd.Git) -- Remap git file search

return {
    {'tpope/vim-fugitive'},
    {'trevorhauter/gitportal.nvim'},
    {'mrloop/telescope-git-branch.nvim'},
    {'sindrets/diffview.nvim'},
    {
        'akinsho/git-conflict.nvim',
        version = "*",
        opts = {},
        --config = true,
    },
    {
        'tanvirtin/vgit.nvim',
        dependencies = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' },
        event = 'VimEnter', -- Lazy loading on 'VimEnter' event is necessary.
        opts = {},
        --config = function() require("vgit").setup() end,
    },
    {
        'axkirillov/unified.nvim',
        opts = {},
        config = function ()
            require('unified').setup({
                signs = {
                    add = "│",
                    delete = "│",
                    change = "│",
                },
                highlights = {
                    add = "DiffAdd",
                    delete = "DiffDelete",
                    change = "DiffChange",
                },
                line_symbols = {
                    add = "+",
                    delete = "-",
                    change = "~",
                },
                auto_refresh = true, -- Whether to automatically refresh diff when buffer changes
            })
        end,
    },
    {
        'SuperBo/fugit2.nvim',
        build = false,
        opts = {
            width = 100,
        },
        dependencies = {
            'MunifTanjim/nui.nvim',
            'nvim-tree/nvim-web-devicons',
            'nvim-lua/plenary.nvim',
            {
                'chrisgrieser/nvim-tinygit', -- optional: for Github PR view
                dependencies = { 'stevearc/dressing.nvim' }
            },
        },
        cmd = { 'Fugit2', 'Fugit2Diff', 'Fugit2Graph' },
        keys = {
            { '<leader>F', mode = 'n', '<cmd>Fugit2<cr>', desc = 'Open fugint', }
        },
    },
    {
        'lewis6991/gitsigns.nvim',
        config = function ()
            require('gitsigns').setup({
                signs = {
                    add          = { text = '┃' },
                    change       = { text = '┃' },
                    delete       = { text = '_' },
                    topdelete    = { text = '‾' },
                    changedelete = { text = '~' },
                    untracked    = { text = '┆' },
                },
                signs_staged = {
                    add          = { text = '┃' },
                    change       = { text = '┃' },
                    delete       = { text = '_' },
                    topdelete    = { text = '‾' },
                    changedelete = { text = '~' },
                    untracked    = { text = '┆' },
                },
                signs_staged_enable = true,
                signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
                numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
                linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
                word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
                watch_gitdir = {
                    follow_files = true
                },
                auto_attach = true,
                attach_to_untracked = false,
                current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
                current_line_blame_opts = {
                    virt_text = true,
                    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
                    delay = 1000,
                    ignore_whitespace = false,
                    virt_text_priority = 100,
                    use_focus = true,
                },
                current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
                sign_priority = 6,
                update_debounce = 100,
                status_formatter = nil, -- Use default
                max_file_length = 40000, -- Disable if file is longer than this (in lines)
                preview_config = {
                    -- Options passed to nvim_open_win
                    style = 'minimal',
                    relative = 'cursor',
                    row = 0,
                    col = 1
                },
            })
        end,
    },
}
