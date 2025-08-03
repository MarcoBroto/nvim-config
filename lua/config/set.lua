-- Map '<leader>' characters
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.guicursor = 'n:iCursor-blinkon300-blinkwait200-blinkoff150,i:ver1-iCursor-blinkon200-blinkwait300-blinkoff150,r:hor5-blinkon200-blinkwait300-blinkoff150'
--vim.opt.tuicursor = { i = 'blinkon0' }

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

