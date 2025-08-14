return {
    {
        "google/executor.nvim",
        dependencies = { "MunifTanjim/nui.nvim" },
        opts = {},
        keys = {
            {'<leader>er', vim.cmd.ExecutorRunWithNewCommand, mode = 'n', desc = 'Run new Executor command'},
            {'<leader>ea', vim.cmd.ExecutorRun, mode = 'n', desc = 'Run previou Executor command'},
            {'<leader>evt', vim.cmd.ExecutorToggleDetail, mode = 'n', desc = 'Toggle Executor Results/Detail View Buffer'},
        },
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*", 
        config = true,
    },
    { 'numToStr/FTerm.nvim' },
}
