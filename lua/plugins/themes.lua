CURRENT_THEME = 'tokyonight'

function setTheme() vim.cmd { cmd = 'colorscheme', args = {CURRENT_THEME} } end

return {
    {
        'xiyaowong/transparent.nvim',
        enabled = false,
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        --config = setTheme,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = setTheme,
    },
    {
        'ribru17/bamboo.nvim',
        lazy = false,
        priority = 1000,
        --config = setTheme,
    },
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000,
        --config = setTheme
    },
    {'frenzyexists/aquarium-vim'},
    {'EdenEast/nightfox.nvim'},
    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000,
        --config = setTheme
    },
    {
      'sainnhe/everforest',
      lazy = false,
      priority = 1000,
      config = function()
        vim.g.everforest_enable_italic = true
        --setTheme()
      end
    },
}
